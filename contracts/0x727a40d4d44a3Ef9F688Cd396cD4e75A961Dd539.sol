contract main {




// =====================  Runtime code  =====================


const name = 'Avax Stars'

const totalSupply = (75 * 10^9 * 24 * 3600)

const decimals = 9

const symbol = 'Astars'

const DOMAIN_TYPEHASH = sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const DELEGATION_TYPEHASH = sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)


uint8 stor0; offset 160
address owner;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[arg1]
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

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function _fallback() payable {
    revert
}

function freeze() payable {
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    stor0 = 1
    emit Freezed()
}

function unfreeze() payable {
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    stor0 = 0
    emit UnFreezed()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if arg2 == -1:
        allowance[address(msg.sender)][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        39,
                        0x734173746172733a3a617070726f76653a20616d6f756e74206578636565647320393620626974,
                        mem[167 len 25],
                        mem[217 len 7]
        allowance[address(msg.sender)][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x294173746172733a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 4)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Token is locked'
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
                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[169 len 23],
                                        mem[215 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[278 len 10],
                                        Mask(176, -256, mem[278 len 10]) << 256
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
                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[169 len 23],
                                        mem[215 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[278 len 10],
                                        Mask(176, -256, mem[278 len 10]) << 256
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
                                    0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[170 len 22],
                                    mem[214 len 10]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[278 len 10],
                                    Mask(176, -256, mem[278 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[425 len 23],
                                                mem[471 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[534 len 10],
                                                Mask(176, -256, mem[534 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[425 len 23],
                                                mem[471 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[534 len 10],
                                                Mask(176, -256, mem[534 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[361 len 23],
                                                    mem[407 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[470 len 10],
                                                    Mask(176, -256, mem[470 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[361 len 23],
                                                    mem[407 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[470 len 10],
                                                    Mask(176, -256, mem[470 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[425 len 23],
                                                    mem[471 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[534 len 10],
                                                    Mask(176, -256, mem[534 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[425 len 23],
                                                    mem[471 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[534 len 10],
                                                    Mask(176, -256, mem[534 len 10]) << 256
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
                                    0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[170 len 22],
                                    mem[214 len 10]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[278 len 10],
                                    Mask(176, -256, mem[278 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[425 len 23],
                                                mem[471 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[534 len 10],
                                                Mask(176, -256, mem[534 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[425 len 23],
                                                mem[471 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[534 len 10],
                                                Mask(176, -256, mem[534 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[361 len 23],
                                                    mem[407 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[470 len 10],
                                                    Mask(176, -256, mem[470 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[361 len 23],
                                                    mem[407 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[470 len 10],
                                                    Mask(176, -256, mem[470 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[425 len 23],
                                                    mem[471 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[534 len 10],
                                                    Mask(176, -256, mem[534 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[425 len 23],
                                                    mem[471 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[534 len 10],
                                                    Mask(176, -256, mem[534 len 10]) << 256
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
    if stor0:
        revert with 0, 'Token is locked'
    signer = erecover(sha3(0, sha3(sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Avax Stars'), chainid, this.address), sha3(sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    40,
                    0x734173746172733a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    address(arg6),
                    mem[738 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    36,
                    0x644173746172733a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(192, 0, arg6),
                    mem[738 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    40,
                    0x654173746172733a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    address(arg6),
                    mem[738 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 41, 0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(184, 0, arg5), 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[792 len 10],
                                        Mask(176, -256, mem[792 len 10]) << 256
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
                            revert with 0, 32, 41, 0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(184, 0, arg5), 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[792 len 10],
                                        Mask(176, -256, mem[792 len 10]) << 256
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
                                    0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    Mask(176, 0, arg5),
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[792 len 10],
                                    Mask(176, -256, mem[792 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[939 len 23],
                                                mem[985 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1048 len 10],
                                                Mask(176, -256, mem[1048 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[939 len 23],
                                                mem[985 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1048 len 10],
                                                Mask(176, -256, mem[1048 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[875 len 23],
                                                    mem[921 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[984 len 10],
                                                    Mask(176, -256, mem[984 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[875 len 23],
                                                    mem[921 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[984 len 10],
                                                    Mask(176, -256, mem[984 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[939 len 23],
                                                    mem[985 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1048 len 10],
                                                    Mask(176, -256, mem[1048 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[939 len 23],
                                                    mem[985 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1048 len 10],
                                                    Mask(176, -256, mem[1048 len 10]) << 256
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
                                    0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    Mask(176, 0, arg5),
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[792 len 10],
                                    Mask(176, -256, mem[792 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[939 len 23],
                                                mem[985 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1048 len 10],
                                                Mask(176, -256, mem[1048 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[939 len 23],
                                                mem[985 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1048 len 10],
                                                Mask(176, -256, mem[1048 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[875 len 23],
                                                    mem[921 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[984 len 10],
                                                    Mask(176, -256, mem[984 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[875 len 23],
                                                    mem[921 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[984 len 10],
                                                    Mask(176, -256, mem[984 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[939 len 23],
                                                    mem[985 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1048 len 10],
                                                    Mask(176, -256, mem[1048 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[939 len 23],
                                                    mem[985 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1048 len 10],
                                                    Mask(176, -256, mem[1048 len 10]) << 256
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
    if stor0:
        revert with 0, 'Token is locked'
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    40,
                    0x654173746172733a3a7472616e736665723a20616d6f756e74206578636565647320393620626974,
                    mem[168 len 24],
                    mem[216 len 8]
    if not msg.sender:
        revert with 0, 
                    32,
                    62,
                    0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[322 len 2]
    if not arg1:
        revert with 0, 
                    32,
                    60,
                    0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[320 len 4]
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    56,
                    0x654173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[280 len 8],
                    Mask(192, -256, mem[280 len 8]) << 256
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, balanceOf[address(arg1)] + arg2) < balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    50,
                    0x734173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                    mem[370 len 14],
                    Mask(144, -256, mem[370 len 14]) << 256
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
                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[457 len 23],
                                        mem[503 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[566 len 10],
                                        Mask(176, -256, mem[566 len 10]) << 256
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
                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[457 len 23],
                                        mem[503 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[566 len 10],
                                        Mask(176, -256, mem[566 len 10]) << 256
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
                                    0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[458 len 22],
                                    mem[502 len 10]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[566 len 10],
                                    Mask(176, -256, mem[566 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[713 len 23],
                                                mem[759 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[822 len 10],
                                                Mask(176, -256, mem[822 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[713 len 23],
                                                mem[759 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[822 len 10],
                                                Mask(176, -256, mem[822 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[649 len 23],
                                                    mem[695 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[758 len 10],
                                                    Mask(176, -256, mem[758 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[649 len 23],
                                                    mem[695 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[758 len 10],
                                                    Mask(176, -256, mem[758 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
                                    0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[458 len 22],
                                    mem[502 len 10]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[566 len 10],
                                    Mask(176, -256, mem[566 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[713 len 23],
                                                mem[759 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[822 len 10],
                                                Mask(176, -256, mem[822 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[713 len 23],
                                                mem[759 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[822 len 10],
                                                Mask(176, -256, mem[822 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[649 len 23],
                                                    mem[695 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[758 len 10],
                                                    Mask(176, -256, mem[758 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[649 len 23],
                                                    mem[695 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[758 len 10],
                                                    Mask(176, -256, mem[758 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
    if stor0:
        revert with 0, 'Token is locked'
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    39,
                    0x734173746172733a3a617070726f76653a20616d6f756e74206578636565647320393620626974,
                    mem[167 len 25],
                    mem[217 len 7]
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 
                        32,
                        62,
                        0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[322 len 2]
        if not arg2:
            revert with 0, 
                        32,
                        60,
                        0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[320 len 4]
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        56,
                        0x654173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[280 len 8],
                        Mask(192, -256, mem[280 len 8]) << 256
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
            revert with 0, 
                        32,
                        50,
                        0x734173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                        mem[370 len 14],
                        Mask(144, -256, mem[370 len 14]) << 256
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
                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                            mem[457 len 23],
                                            mem[503 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[566 len 10],
                                            Mask(176, -256, mem[566 len 10]) << 256
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
                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                            mem[457 len 23],
                                            mem[503 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[566 len 10],
                                            Mask(176, -256, mem[566 len 10]) << 256
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
                                        0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                        mem[458 len 22],
                                        mem[502 len 10]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[566 len 10],
                                        Mask(176, -256, mem[566 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[649 len 23],
                                                        mem[695 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[758 len 10],
                                                        Mask(176, -256, mem[758 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[649 len 23],
                                                        mem[695 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[758 len 10],
                                                        Mask(176, -256, mem[758 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                                        0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                        mem[458 len 22],
                                        mem[502 len 10]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[566 len 10],
                                        Mask(176, -256, mem[566 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
                                                    0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[713 len 23],
                                                    mem[759 len 9]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[822 len 10],
                                                    Mask(176, -256, mem[822 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[649 len 23],
                                                        mem[695 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[758 len 10],
                                                        Mask(176, -256, mem[758 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[649 len 23],
                                                        mem[695 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[758 len 10],
                                                        Mask(176, -256, mem[758 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                revert with 0, 
                            32,
                            62,
                            0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[322 len 2]
            if not arg2:
                revert with 0, 
                            32,
                            60,
                            0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[320 len 4]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            56,
                            0x654173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[280 len 8],
                            Mask(192, -256, mem[280 len 8]) << 256
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            50,
                            0x734173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[370 len 14],
                            Mask(144, -256, mem[370 len 14]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[457 len 23],
                                                mem[503 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[566 len 10],
                                                Mask(176, -256, mem[566 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[457 len 23],
                                                mem[503 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[566 len 10],
                                                Mask(176, -256, mem[566 len 10]) << 256
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
                                            0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[458 len 22],
                                            mem[502 len 10]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[566 len 10],
                                            Mask(176, -256, mem[566 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[649 len 23],
                                                            mem[695 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[758 len 10],
                                                            Mask(176, -256, mem[758 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[649 len 23],
                                                            mem[695 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[758 len 10],
                                                            Mask(176, -256, mem[758 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[713 len 23],
                                                            mem[759 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[822 len 10],
                                                            Mask(176, -256, mem[822 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[713 len 23],
                                                            mem[759 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[822 len 10],
                                                            Mask(176, -256, mem[822 len 10]) << 256
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
                                            0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[458 len 22],
                                            mem[502 len 10]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[566 len 10],
                                            Mask(176, -256, mem[566 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[713 len 23],
                                                        mem[759 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[822 len 10],
                                                        Mask(176, -256, mem[822 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[649 len 23],
                                                            mem[695 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[758 len 10],
                                                            Mask(176, -256, mem[758 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[649 len 23],
                                                            mem[695 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[758 len 10],
                                                            Mask(176, -256, mem[758 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[713 len 23],
                                                            mem[759 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[822 len 10],
                                                            Mask(176, -256, mem[822 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[713 len 23],
                                                            mem[759 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[822 len 10],
                                                            Mask(176, -256, mem[822 len 10]) << 256
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
                            0xfe4173746172733a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63,
                            mem[287 len 1],
                            Mask(248, -256, mem[287 len 1]) << 256
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 
                            32,
                            62,
                            0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[418 len 2]
            if not arg2:
                revert with 0, 
                            32,
                            60,
                            0x734173746172733a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[416 len 4]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            56,
                            0x654173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[376 len 8],
                            Mask(192, -256, mem[376 len 8]) << 256
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            50,
                            0x734173746172733a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[466 len 14],
                            Mask(144, -256, mem[466 len 14]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[553 len 23],
                                                mem[599 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[662 len 10],
                                                Mask(176, -256, mem[662 len 10]) << 256
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
                                                0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[553 len 23],
                                                mem[599 len 9]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[662 len 10],
                                                Mask(176, -256, mem[662 len 10]) << 256
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
                                            0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[554 len 22],
                                            mem[598 len 10]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[662 len 10],
                                            Mask(176, -256, mem[662 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[809 len 23],
                                                        mem[855 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[918 len 10],
                                                        Mask(176, -256, mem[918 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[809 len 23],
                                                        mem[855 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[918 len 10],
                                                        Mask(176, -256, mem[918 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[745 len 23],
                                                            mem[791 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[854 len 10],
                                                            Mask(176, -256, mem[854 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[745 len 23],
                                                            mem[791 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[854 len 10],
                                                            Mask(176, -256, mem[854 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[809 len 23],
                                                            mem[855 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[918 len 10],
                                                            Mask(176, -256, mem[918 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[809 len 23],
                                                            mem[855 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[918 len 10],
                                                            Mask(176, -256, mem[918 len 10]) << 256
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
                                            0x294173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[554 len 22],
                                            mem[598 len 10]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[662 len 10],
                                            Mask(176, -256, mem[662 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[809 len 23],
                                                        mem[855 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[918 len 10],
                                                        Mask(176, -256, mem[918 len 10]) << 256
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
                                                        0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[809 len 23],
                                                        mem[855 len 9]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[918 len 10],
                                                        Mask(176, -256, mem[918 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[745 len 23],
                                                            mem[791 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[854 len 10],
                                                            Mask(176, -256, mem[854 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[745 len 23],
                                                            mem[791 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[854 len 10],
                                                            Mask(176, -256, mem[854 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[809 len 23],
                                                            mem[855 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[918 len 10],
                                                            Mask(176, -256, mem[918 len 10]) << 256
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
                                                            0x654173746172733a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[809 len 23],
                                                            mem[855 len 9]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x644173746172733a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[918 len 10],
                                                            Mask(176, -256, mem[918 len 10]) << 256
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
