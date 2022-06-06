contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;

function paused() payable {
    return bool(paused)
}

function sub_70a1c375(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_871e6ca6(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function owner() payable {
    return owner
}

function sub_af5b052b(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_d6247765(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x524f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_780cdd20(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x52576f6f4163636573734d616e616765723a207661756c745f5a45524f5f414444,
                    mem[197 len 31]
    stor4[address(arg1)] = uint8(arg2)
    emit 0x513f4d51: arg2, arg1
}

function sub_7fa58373(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x44576f6f4163636573734d616e616765723a2066656541646d696e5f5a45524f5f414444,
                    mem[200 len 28]
    stor1[address(arg1)] = uint8(arg2)
    emit 0x369bc16e: arg2, arg1
}

function sub_cd8afbd8(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73576f6f4163636573734d616e616765723a207661756c7441646d696e5f5a45524f5f414444,
                    mem[202 len 26]
    stor2[address(arg1)] = uint8(arg2)
    emit 0xc2baf450: arg2, arg1
}

function sub_3ba260a2(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe576f6f4163636573734d616e616765723a2072656261746541646d696e5f5a45524f5f414444,
                    mem[203 len 25]
    stor3[address(arg1)] = uint8(arg2)
    emit 0xb7a2f95c: arg2, arg1
}

function sub_fc208c83(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'rWooAccessManager: length_INVALI'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x52576f6f4163636573734d616e616765723a207661756c745f5a45524f5f414444,
                        mem[197 len 31]
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        require idx < ('cd', 36).length
        mem[96] = bool(cd[((32 * idx) + cd[36] + 36)])
        emit 0x513f4d51: bool(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_cf22ff59(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'rWooAccessManager: length_INVALI'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x44576f6f4163636573734d616e616765723a2066656541646d696e5f5a45524f5f414444,
                        mem[200 len 28]
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        require idx < ('cd', 36).length
        mem[96] = bool(cd[((32 * idx) + cd[36] + 36)])
        emit 0x369bc16e: bool(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_441e0591(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'rWooAccessManager: length_INVALI'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x73576f6f4163636573734d616e616765723a207661756c7441646d696e5f5a45524f5f414444,
                        mem[202 len 26]
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        require idx < ('cd', 36).length
        mem[96] = bool(cd[((32 * idx) + cd[36] + 36)])
        emit 0xc2baf450: bool(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_e40fdac2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ROwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'rWooAccessManager: length_INVALI'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xfe576f6f4163636573734d616e616765723a2072656261746541646d696e5f5a45524f5f414444,
                        mem[203 len 25]
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        require idx < ('cd', 36).length
        mem[96] = bool(cd[((32 * idx) + cd[36] + 36)])
        emit 0xb7a2f95c: bool(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}



}
