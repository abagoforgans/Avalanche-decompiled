contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
mapping of uint256 sub_207b11a4;
array of struct sub_559fdffb;
array of struct sub_649b62aa;
array of address stor75901123276489147006081427704161463599957449291885703562554030577081909053179;

function sub_207b11a4(?) payable {
    require calldata.size - 4 >= 64
    return sub_207b11a4[arg1][arg2]
}

function sub_559fdffb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_559fdffb[arg1].field_0
    return sub_559fdffb[arg1][arg2].field_0
}

function paused() payable {
    return bool(paused)
}

function sub_649b62aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_649b62aa.length
    return sub_649b62aa[arg1].field_0
}

function owner() payable {
    return owner
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

function pauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unPauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function isAllowdCaller(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if 1 == sub_207b11a4[address(arg1)][address(arg2)]:
        return 1
    else:
        return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAllowedCallees() payable {
    if not sub_649b62aa.length:
        mem[(32 * sub_649b62aa.length) + 128] = 32
        mem[(32 * sub_649b62aa.length) + 160] = sub_649b62aa.length
        mem[(32 * sub_649b62aa.length) + 192 len floor32(sub_649b62aa.length)] = mem[128 len floor32(sub_649b62aa.length)]
        return memory
          from (32 * sub_649b62aa.length) + 128
           len (96 * sub_649b62aa.length) + 64
    mem[128] = address(sub_649b62aa.field_0)
    idx = 128
    s = 0
    while (32 * sub_649b62aa.length) + 96 > idx:
        mem[idx + 32] = sub_649b62aa[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_649b62aa.length) + 192 len floor32(sub_649b62aa.length)] = mem[128 len floor32(sub_649b62aa.length)]
    return Array(len=sub_649b62aa.length, data=mem[128 len floor32(sub_649b62aa.length)], mem[(32 * sub_649b62aa.length) + floor32(sub_649b62aa.length) + 192 len (32 * sub_649b62aa.length) - floor32(sub_649b62aa.length)]), 
}

function sub_034c3f89(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg2.length:
        revert with 0, 'AACPC:1'
    if not sub_559fdffb[address(arg1)].field_0:
        revert with 0, 'AACPC:2'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        sub_559fdffb[address(arg1)].field_0++
        sub_559fdffb[address(arg1)][sub_559fdffb[address(arg1)].field_0].field_0 = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(arg1), 201)
        sub_207b11a4[address(arg1)][mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function getAllowedCallersPerCallee(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_559fdffb[address(arg1)].field_0:
        mem[(32 * sub_559fdffb[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_559fdffb[address(arg1)].field_0) + 160] = sub_559fdffb[address(arg1)].field_0
        mem[(32 * sub_559fdffb[address(arg1)].field_0) + 192 len floor32(sub_559fdffb[address(arg1)].field_0)] = mem[128 len floor32(sub_559fdffb[address(arg1)].field_0)]
        return memory
          from (32 * sub_559fdffb[address(arg1)].field_0) + 128
           len (96 * sub_559fdffb[address(arg1)].field_0) + 64
    mem[128] = sub_559fdffb[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_559fdffb[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_559fdffb[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_559fdffb[address(arg1)].field_0) + 192 len floor32(sub_559fdffb[address(arg1)].field_0)] = mem[128 len floor32(sub_559fdffb[address(arg1)].field_0)]
    return Array(len=sub_559fdffb[address(arg1)].field_0, data=mem[128 len floor32(sub_559fdffb[address(arg1)].field_0)], mem[(32 * sub_559fdffb[address(arg1)].field_0) + floor32(sub_559fdffb[address(arg1)].field_0) + 192 len (32 * sub_559fdffb[address(arg1)].field_0) - floor32(sub_559fdffb[address(arg1)].field_0)]), 
}

function sub_1e03b5b9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg2.length:
        revert with 0, 'SACPC:1'
    if not sub_559fdffb[address(arg1)].field_0:
        sub_649b62aa.length++
        storA7CE[stor203.length] = arg1
    else:
        idx = 0
        while idx < sub_559fdffb[address(arg1)].field_0:
            require idx < sub_559fdffb[address(arg1)].field_0
            sub_207b11a4[address(arg1)][stor202[address(arg1)][idx].field_0] = 0
            mem[0] = arg1
            mem[32] = 202
            idx = idx + 1
            continue 
        sub_559fdffb[address(arg1)].field_0 = 0
        idx = 0
        while sub_559fdffb[address(arg1)].field_0 > idx:
            sub_559fdffb[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        sub_559fdffb[address(arg1)].field_0++
        sub_559fdffb[address(arg1)][sub_559fdffb[address(arg1)].field_0].field_0 = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(arg1), 201)
        sub_207b11a4[address(arg1)][mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function initializeSecurityMatrix() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                        stor151 = 1
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                paused = 0
                                stor151 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        stor151 = 1
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            stor151 = 1
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            stor151 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
}



}
