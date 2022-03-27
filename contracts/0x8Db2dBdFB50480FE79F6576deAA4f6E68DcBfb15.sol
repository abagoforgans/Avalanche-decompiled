contract main {




// =====================  Runtime code  =====================


const name = 'DCTDAO'

const decimals = 18

const symbol = 'DCTD'

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x154c00819833dac601ee5ddded6fda79d9d8b506b911b3dbd54cdb95fe6c3686


array of struct roleAdmin;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 == -1:
        allowance[address(msg.sender)][address(arg1)] = -1
        emit Approval(-1, msg.sender, arg1);
    else:
        if arg2 > -1:
            revert with 0, 
                        32,
                        38,
                        0x73444354443a3a617070726f76653a20616d6f756e7420657863656564732032353620626974,
                        mem[166 len 26],
                        mem[218 len 6]
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x154c00819833dac601ee5ddded6fda79d9d8b506b911b3dbd54cdb95fe6c3686][1][address(msg.sender)].field_0:
        revert with 0, 'MINTER_ROLE required'
    if not arg1:
        revert with 0, 'DCTDAO: mint to the zero address'
    balances[address(arg1)] += arg2
    totalSupply += arg2
    if arg1 != 0:
        if arg2 > 0:
            if arg1:
                if numCheckpoints[address(arg1)] > 0:
                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[276 len 12],
                                    Mask(160, -256, mem[276 len 12]) << 256
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                else:
                    if arg2 < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[276 len 12],
                                    Mask(160, -256, mem[276 len 12]) << 256
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
    emit Transfer(arg2, 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x154c00819833dac601ee5ddded6fda79d9d8b506b911b3dbd54cdb95fe6c3686][1][address(msg.sender)].field_0:
        revert with 0, 'MINTER_ROLE required'
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7344435444414f3a206275726e20616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[201 len 27]
    if msg.sender == arg1:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6544435444414f3a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[198 len 30]
        if balances[address(arg1)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x7444435444414f3a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[199 len 29]
        balances[address(arg1)] -= arg2
        totalSupply -= arg2
        if arg1:
            if arg2 > 0:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if arg2 > checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 
                                        32,
                                        39,
                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                        mem[167 len 25],
                                        mem[217 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[276 len 12],
                                        Mask(160, -256, mem[276 len 12]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg2
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 -= arg2
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if arg2 > 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                        mem[167 len 25],
                                        mem[217 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[276 len 12],
                                        Mask(160, -256, mem[276 len 12]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg2
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = -arg2
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
    else:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x6544435444414f3a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[198 len 30]
            if balances[address(arg1)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x7444435444414f3a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[199 len 29]
            balances[address(arg1)] -= arg2
            totalSupply -= arg2
            if arg1:
                if arg2 > 0:
                    if arg1:
                        if numCheckpoints[address(arg1)] > 0:
                            if arg2 > checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[167 len 25],
                                            mem[217 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[276 len 12],
                                            Mask(160, -256, mem[276 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 -= arg2
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if arg2 > 0:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[167 len 25],
                                            mem[217 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[276 len 12],
                                            Mask(160, -256, mem[276 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = -arg2
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
        else:
            if arg2 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            61,
                            0x73444354443a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63,
                            mem[189 len 3],
                            Mask(232, -256, mem[189 len 3]) << 256
            allowance[address(arg1)][address(msg.sender)] -= arg2
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
            if not arg1:
                revert with 0, 32, 34, 0x6544435444414f3a206275726e2066726f6d20746865207a65726f20616464726573, mem[294 len 30]
            if balances[address(arg1)] < arg2:
                revert with 0, 32, 35, 0x7444435444414f3a206275726e20616d6f756e7420657863656564732062616c616e63, mem[295 len 29]
            balances[address(arg1)] -= arg2
            totalSupply -= arg2
            if arg1:
                if arg2 > 0:
                    if arg1:
                        if numCheckpoints[address(arg1)] > 0:
                            if arg2 > checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[263 len 25],
                                            mem[313 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[372 len 12],
                                            Mask(160, -256, mem[372 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 -= arg2
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if arg2 > 0:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[263 len 25],
                                            mem[313 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[372 len 12],
                                            Mask(160, -256, mem[372 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = -arg2
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > -1:
        revert with 0, 
                    32,
                    39,
                    0x65444354443a3a7472616e736665723a20616d6f756e7420657863656564732032353620626974,
                    mem[167 len 25],
                    mem[217 len 7]
    if not msg.sender:
        revert with 0, 
                    32,
                    60,
                    0x65444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[320 len 4]
    if not arg1:
        revert with 0, 
                    32,
                    58,
                    0x73444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[318 len 6]
    if arg2 > balances[address(msg.sender)]:
        revert with 0, 
                    32,
                    54,
                    0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[278 len 10],
                    Mask(176, -256, mem[278 len 10]) << 256
    balances[address(msg.sender)] -= arg2
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        revert with 0, 
                    32,
                    48,
                    0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                    mem[368 len 16],
                    mem[400 len 16]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if arg1 != msg.sender:
        if arg2 > 0:
            if not msg.sender:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[564 len 12],
                                        Mask(160, -256, mem[564 len 12]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if arg2 < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[564 len 12],
                                        Mask(160, -256, mem[564 len 12]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
            else:
                if numCheckpoints[address(msg.sender)] > 0:
                    if arg2 > checkpoints[address(msg.sender)][stor5[address(msg.sender)] - 1 << 224].field_256:
                        revert with 0, 
                                    32,
                                    39,
                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                    mem[455 len 25],
                                    mem[505 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[564 len 12],
                                    Mask(160, -256, mem[564 len 12]) << 256
                    if numCheckpoints[address(msg.sender)] <= 0:
                        checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_0 = uint32(block.number)
                        checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_256 = checkpoints[address(msg.sender)][stor5[address(msg.sender)] - 1 << 224].field_256 - arg2
                        numCheckpoints[address(msg.sender)] = uint32(numCheckpoints[address(msg.sender)] + 1)
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[820 len 12],
                                                Mask(160, -256, mem[820 len 12]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if arg2 < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[820 len 12],
                                                Mask(160, -256, mem[820 len 12]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(msg.sender)][stor5[address(msg.sender)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(msg.sender)][stor5[address(msg.sender)] - 1 << 224].field_256 -= arg2
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[756 len 12],
                                                    Mask(160, -256, mem[756 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if arg2 < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[756 len 12],
                                                    Mask(160, -256, mem[756 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_0 = uint32(block.number)
                            checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_256 = checkpoints[address(msg.sender)][stor5[address(msg.sender)] - 1 << 224].field_256 - arg2
                            numCheckpoints[address(msg.sender)] = uint32(numCheckpoints[address(msg.sender)] + 1)
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if arg2 < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                else:
                    if arg2 > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                    mem[455 len 25],
                                    mem[505 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[564 len 12],
                                    Mask(160, -256, mem[564 len 12]) << 256
                    if numCheckpoints[address(msg.sender)] <= 0:
                        checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_0 = uint32(block.number)
                        checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_256 = -arg2
                        numCheckpoints[address(msg.sender)] = uint32(numCheckpoints[address(msg.sender)] + 1)
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[820 len 12],
                                                Mask(160, -256, mem[820 len 12]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if arg2 < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[820 len 12],
                                                Mask(160, -256, mem[820 len 12]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(msg.sender)][stor5[address(msg.sender)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(msg.sender)][stor5[address(msg.sender)] - 1 << 224].field_256 = -arg2
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[756 len 12],
                                                    Mask(160, -256, mem[756 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if arg2 < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[756 len 12],
                                                    Mask(160, -256, mem[756 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_0 = uint32(block.number)
                            checkpoints[address(msg.sender)][stor5[address(msg.sender)]].field_256 = -arg2
                            numCheckpoints[address(msg.sender)] = uint32(numCheckpoints[address(msg.sender)] + 1)
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2 < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 + arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if arg2 < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = arg2
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > -1:
        revert with 0, 
                    32,
                    38,
                    0x73444354443a3a617070726f76653a20616d6f756e7420657863656564732032353620626974,
                    mem[166 len 26],
                    mem[218 len 6]
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 
                        32,
                        60,
                        0x65444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[320 len 4]
        if not arg2:
            revert with 0, 
                        32,
                        58,
                        0x73444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[318 len 6]
        if arg3 > balances[address(arg1)]:
            revert with 0, 
                        32,
                        54,
                        0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[278 len 10],
                        Mask(176, -256, mem[278 len 10]) << 256
        balances[address(arg1)] -= arg3
        if balances[address(arg2)] + arg3 < balances[address(arg2)]:
            revert with 0, 
                        32,
                        48,
                        0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                        mem[368 len 16],
                        mem[400 len 16]
        balances[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg1 != arg2:
            if arg3 > 0:
                if not arg1:
                    if arg2:
                        if numCheckpoints[address(arg2)] > 0:
                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                            mem[454 len 26],
                                            mem[506 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[564 len 12],
                                            Mask(160, -256, mem[564 len 12]) << 256
                            if numCheckpoints[address(arg2)] <= 0:
                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                else:
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        else:
                            if arg3 < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                            mem[454 len 26],
                                            mem[506 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[564 len 12],
                                            Mask(160, -256, mem[564 len 12]) << 256
                            if numCheckpoints[address(arg2)] <= 0:
                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                else:
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                else:
                    if numCheckpoints[address(arg1)] > 0:
                        if arg3 > checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 
                                        32,
                                        39,
                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                        mem[455 len 25],
                                        mem[505 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[564 len 12],
                                        Mask(160, -256, mem[564 len 12]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg3
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            if arg2:
                                if numCheckpoints[address(arg2)] > 0:
                                    if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if arg3 < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 -= arg3
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[756 len 12],
                                                        Mask(160, -256, mem[756 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[756 len 12],
                                                        Mask(160, -256, mem[756 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg3
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                    else:
                        if arg3 > 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                        mem[455 len 25],
                                        mem[505 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[564 len 12],
                                        Mask(160, -256, mem[564 len 12]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg3
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            if arg2:
                                if numCheckpoints[address(arg2)] > 0:
                                    if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if arg3 < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[820 len 12],
                                                    Mask(160, -256, mem[820 len 12]) << 256
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = -arg3
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[756 len 12],
                                                        Mask(160, -256, mem[756 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[756 len 12],
                                                        Mask(160, -256, mem[756 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg3
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
    else:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if not arg1:
                revert with 0, 
                            32,
                            60,
                            0x65444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[320 len 4]
            if not arg2:
                revert with 0, 
                            32,
                            58,
                            0x73444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[318 len 6]
            if arg3 > balances[address(arg1)]:
                revert with 0, 
                            32,
                            54,
                            0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[278 len 10],
                            Mask(176, -256, mem[278 len 10]) << 256
            balances[address(arg1)] -= arg3
            if balances[address(arg2)] + arg3 < balances[address(arg2)]:
                revert with 0, 
                            32,
                            48,
                            0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[368 len 16],
                            mem[400 len 16]
            balances[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg1 != arg2:
                if arg3 > 0:
                    if not arg1:
                        if arg2:
                            if numCheckpoints[address(arg2)] > 0:
                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[454 len 26],
                                                mem[506 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[564 len 12],
                                                Mask(160, -256, mem[564 len 12]) << 256
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if arg3 < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[454 len 26],
                                                mem[506 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[564 len 12],
                                                Mask(160, -256, mem[564 len 12]) << 256
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                    else:
                        if numCheckpoints[address(arg1)] > 0:
                            if arg3 > checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[455 len 25],
                                            mem[505 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[564 len 12],
                                            Mask(160, -256, mem[564 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg3
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 -= arg3
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[756 len 12],
                                                            Mask(160, -256, mem[756 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[756 len 12],
                                                            Mask(160, -256, mem[756 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg3
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[820 len 12],
                                                            Mask(160, -256, mem[820 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[820 len 12],
                                                            Mask(160, -256, mem[820 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        else:
                            if arg3 > 0:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[455 len 25],
                                            mem[505 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[564 len 12],
                                            Mask(160, -256, mem[564 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg3
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[820 len 12],
                                                        Mask(160, -256, mem[820 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = -arg3
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[756 len 12],
                                                            Mask(160, -256, mem[756 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[756 len 12],
                                                            Mask(160, -256, mem[756 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg3
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[820 len 12],
                                                            Mask(160, -256, mem[820 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[820 len 12],
                                                            Mask(160, -256, mem[820 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
        else:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            61,
                            0x73444354443a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63,
                            mem[285 len 3],
                            Mask(232, -256, mem[285 len 3]) << 256
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 
                            32,
                            60,
                            0x65444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[416 len 4]
            if not arg2:
                revert with 0, 
                            32,
                            58,
                            0x73444354443a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[414 len 6]
            if arg3 > balances[address(arg1)]:
                revert with 0, 
                            32,
                            54,
                            0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[374 len 10],
                            Mask(176, -256, mem[374 len 10]) << 256
            balances[address(arg1)] -= arg3
            if balances[address(arg2)] + arg3 < balances[address(arg2)]:
                revert with 0, 
                            32,
                            48,
                            0x73444354443a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[464 len 16],
                            mem[496 len 16]
            balances[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg1 != arg2:
                if arg3 > 0:
                    if not arg1:
                        if arg2:
                            if numCheckpoints[address(arg2)] > 0:
                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[550 len 26],
                                                mem[602 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[660 len 12],
                                                Mask(160, -256, mem[660 len 12]) << 256
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if arg3 < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                mem[550 len 26],
                                                mem[602 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[660 len 12],
                                                Mask(160, -256, mem[660 len 12]) << 256
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                    else:
                        if numCheckpoints[address(arg1)] > 0:
                            if arg3 > checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[551 len 25],
                                            mem[601 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[660 len 12],
                                            Mask(160, -256, mem[660 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg3
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[916 len 12],
                                                        Mask(160, -256, mem[916 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[916 len 12],
                                                        Mask(160, -256, mem[916 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 -= arg3
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[852 len 12],
                                                            Mask(160, -256, mem[852 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[852 len 12],
                                                            Mask(160, -256, mem[852 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 - arg3
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[916 len 12],
                                                            Mask(160, -256, mem[916 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[916 len 12],
                                                            Mask(160, -256, mem[916 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        else:
                            if arg3 > 0:
                                revert with 0, 
                                            32,
                                            39,
                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e7420756e646572666c6f77,
                                            mem[551 len 25],
                                            mem[601 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[660 len 12],
                                            Mask(160, -256, mem[660 len 12]) << 256
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg3
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                if arg2:
                                    if numCheckpoints[address(arg2)] > 0:
                                        if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[916 len 12],
                                                        Mask(160, -256, mem[916 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if arg3 < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[916 len 12],
                                                        Mask(160, -256, mem[916 len 12]) << 256
                                        if numCheckpoints[address(arg2)] <= 0:
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                            else:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_256 = -arg3
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[852 len 12],
                                                            Mask(160, -256, mem[852 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[852 len 12],
                                                            Mask(160, -256, mem[852 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_256 = -arg3
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    if arg2:
                                        if numCheckpoints[address(arg2)] > 0:
                                            if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3 < checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[916 len 12],
                                                            Mask(160, -256, mem[916 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 += arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 + arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                        else:
                                            if arg3 < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x65444354443a3a5f6d6f766544656c6567617465733a20616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73444354443a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[916 len 12],
                                                            Mask(160, -256, mem[916 len 12]) << 256
                                            if numCheckpoints[address(arg2)] <= 0:
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                            else:
                                                if checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[address(arg2)][stor5[address(arg2)] - 1 << 224].field_256 = arg3
                                                else:
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_0 = uint32(block.number)
                                                    checkpoints[address(arg2)][stor5[address(arg2)]].field_256 = arg3
                                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
    return 1
}



}
