contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint8 stor101;
uint256 validatorCount;
uint256 quorum;

function validatorCount() payable {
    return validatorCount
}

function quorum() payable {
    return quorum
}

function owner() payable {
    return owner
}

function isValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor101[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setQuorum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if validatorCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x7256616c696461746f7252656769737472793a206e6f7420656e6f7567682076616c696461746f727320746f20737570706f72742071756f7275,
                    mem[222 len 6]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe56616c696461746f7252656769737472793a2071756f72756d2063616e6e6f7420626520,
                    mem[201 len 27]
    quorum = arg1
    emit QuorumChanged(arg1);
}

function addValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x7356616c696461746f7252656769737472793a2076616c696461746f72206973206e6f7420612076616c696420616464726573,
                    mem[215 len 13]
    if stor101[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7356616c696461746f7252656769737472793a2076616c696461746f72206578697374,
                    mem[199 len 29]
    stor101[address(arg1)] = 1
    validatorCount++
    emit ValidatorAdded(arg1);
}

function removeValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if validatorCount <= quorum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6d56616c696461746f7252656769737472793a2063616e6e6f742072656d6f76652076616c696461746f723b2071756f72756d2077696c6c2062652076696f6c617465,
                    mem[231 len 29]
    if not stor101[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x3056616c696461746f7252656769737472793a206e6f7420612076616c696461746f,
                    mem[198 len 30]
    stor101[address(arg1)] = 0
    validatorCount--
    emit ValidatorRemoved(arg1);
}

function initialize(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[(32 * arg1.length) + 242 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[(32 * arg1.length) + 242 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[(32 * arg1.length) + 242 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[(32 * arg1.length) + 242 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        51,
                        0x7356616c696461746f7252656769737472793a2076616c696461746f72206973206e6f7420612076616c696420616464726573,
                        mem[(32 * arg1.length) + 247 len 13]
        if stor101[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        35,
                        0x7356616c696461746f7252656769737472793a2076616c696461746f72206578697374,
                        mem[(32 * arg1.length) + 231 len 29]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 101
        stor101[address(mem[(32 * idx) + 128])] = 1
        validatorCount++
        emit ValidatorAdded(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if validatorCount < arg2:
        revert with 0, 
                    32,
                    58,
                    0x7256616c696461746f7252656769737472793a206e6f7420656e6f7567682076616c696461746f727320746f20737570706f72742071756f7275,
                    mem[(32 * arg1.length) + 254 len 6]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0xfe56616c696461746f7252656769737472793a2071756f72756d2063616e6e6f7420626520,
                    mem[(32 * arg1.length) + 233 len 27]
    quorum = arg2
    emit QuorumChanged(arg2);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
