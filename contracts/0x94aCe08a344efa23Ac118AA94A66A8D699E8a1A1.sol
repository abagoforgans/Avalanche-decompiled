contract main {




// =====================  Runtime code  =====================


#
#  - sub_07642065(?)
#  - deList(uint256 arg1)
#  - swap(uint256 arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint256 config;
uint8 stor152;
array of struct stor202;
mapping of uint256 sub_54864415;
mapping of uint256 sub_8cfbe9d5;
mapping of uint256 sub_636b0475;
mapping of uint8 stor206;
mapping of uint8 stor207;
mapping of uint256 myAmountSwapped0;
mapping of uint256 myAmountSwapped1;
mapping of uint8 stor210;
mapping of uint8 stor211;
mapping of uint256 sub_110808a6;
uint128 stor64B4; offset 160
address stakeContractAddress;
uint256 minValueOfBotHolder;
uint256 txFeeRatio;
uint128 storF8B5; offset 160
address botTokenAddress;

function sub_110808a6(?) {
    require calldata.size - 4 >= 32
    return sub_110808a6[arg1]
}

function getTxFeeRatio() {
    return txFeeRatio
}

function myAmountSwapped1(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return myAmountSwapped1[arg1][arg2]
}

function getConfig(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return config[arg1 xor arg2]
}

function sub_54864415(?) {
    require calldata.size - 4 >= 32
    return sub_54864415[arg1]
}

function sub_636b0475(?) {
    require calldata.size - 4 >= 32
    return sub_636b0475[arg1]
}

function getMinValueOfBotHolder() {
    return minValueOfBotHolder
}

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return config[arg1]
}

function sub_8cfbe9d5(?) {
    require calldata.size - 4 >= 32
    return sub_8cfbe9d5[arg1]
}

function sub_8d0929af(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(stor211[arg1][arg2])
}

function owner() {
    return owner
}

function getConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return config[arg2 xor arg1]
}

function getPoolCount() {
    return stor202.length
}

function myAmountSwapped0(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return myAmountSwapped0[arg1][arg2]
}

function sub_c6472b12(?) {
    require calldata.size - 4 >= 32
    return bool(stor206[arg1])
}

function getBotToken() {
    return botTokenAddress
}

function sub_cc786a80(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor207[arg1][arg2])
}

function getStakeContract() {
    return stakeContractAddress
}

function myClaimed(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor210[arg1][arg2])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 != config[arg1]:
        config[arg1] = arg2
}

function setConfig(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 != config[arg2 xor arg1]:
        config[arg2 xor arg1] = arg3
}

function setConfig(bytes32 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 != config[arg1 xor arg2]:
        config[arg1 xor arg2] = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor202.length
    mem[128] = stor202[arg1].field_0
    idx = 128
    s = 0
    while stor202[arg1].length + 96 > idx:
        mem[idx + 32] = stor202[(9 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor202[arg1].length, data=mem[128 len ceil32(stor202[arg1].length)]), 
           stor202[arg1].field_256,
           stor202[arg1].field_512,
           stor202[arg1].field_768,
           stor202[arg1].field_1024,
           stor202[arg1].field_1280,
           stor202[arg1].field_1536,
           stor202[arg1].field_1792,
           bool(stor202[arg1].field_2048)
}

function addWhitelist(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        require arg1 < stor202.length
        if stor202[arg1].field_256 != msg.sender:
            revert with 0, 'no permission'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 211)
        stor211[arg1][mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeWhitelist(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        require arg1 < stor202.length
        if stor202[arg1].field_256 != msg.sender:
            revert with 0, 'no permission'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 211)
        stor211[arg1][mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function initialize(uint256 arg1, uint256 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor152 = 1
        txFeeRatio = arg1
        minValueOfBotHolder = arg2
        botTokenAddress = arg3
        storF8B5 = 0
        stakeContractAddress = arg4
        stor64B4 = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor152 = 1
            txFeeRatio = arg1
            minValueOfBotHolder = arg2
            botTokenAddress = arg3
            storF8B5 = 0
            stakeContractAddress = arg4
            stor64B4 = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor152 = 1
                txFeeRatio = arg1
                minValueOfBotHolder = arg2
                botTokenAddress = arg3
                storF8B5 = 0
                stakeContractAddress = arg4
                stor64B4 = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor152 = 1
                    txFeeRatio = arg1
                    minValueOfBotHolder = arg2
                    botTokenAddress = arg3
                    storF8B5 = 0
                    stakeContractAddress = arg4
                    stor64B4 = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor152 = 1
                        txFeeRatio = arg1
                        minValueOfBotHolder = arg2
                        botTokenAddress = arg3
                        storF8B5 = 0
                        stakeContractAddress = arg4
                        stor64B4 = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                        if uint8(stor0.field_8):
                            stor152 = 1
                            txFeeRatio = arg1
                            minValueOfBotHolder = arg2
                            botTokenAddress = arg3
                            storF8B5 = 0
                            stakeContractAddress = arg4
                            stor64B4 = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                            if uint8(stor0.field_8):
                                stor152 = 1
                                txFeeRatio = arg1
                                minValueOfBotHolder = arg2
                                botTokenAddress = arg3
                                storF8B5 = 0
                                stakeContractAddress = arg4
                                stor64B4 = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor152 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                txFeeRatio = arg1
                                minValueOfBotHolder = arg2
                                botTokenAddress = arg3
                                storF8B5 = 0
                                stakeContractAddress = arg4
                                stor64B4 = 0
                                uint8(stor0.field_8) = 0
}



}
