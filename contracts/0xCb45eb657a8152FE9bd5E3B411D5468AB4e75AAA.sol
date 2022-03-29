contract main {




// =====================  Runtime code  =====================


#
#  - ads(uint256 arg1)
#  - sub_7d9339cd(?)
#  - sub_9b07a0d7(?)
#  - sub_c2e4dc7d(?)
#
address owner;
address devAddress;
array of struct adOwner;
uint256 weiPixelPrice;
uint256 pixelsPerCell;

function sub_12d1f110(?) {
    return pixelsPerCell
}

function pixelsPerCell() {
    return pixelsPerCell
}

function grid(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 100
    require arg2 < 100
    return bool(stor((0.03125 / arg2) + (4 * arg1) + 5)[uint8(arg2)])
}

function sub_1ab93534(?) {
    return weiPixelPrice
}

function getAdOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= adOwner.length:
        revert with 'NH{q', 50
    return address(adOwner[arg1].field_0)
}

function getAdsLength() {
    return adOwner.length
}

function owner() {
    return owner
}

function devaddr() {
    return devAddress
}

function weiPixelPrice() {
    return weiPixelPrice
}

function getDevAddress() {
    return devAddress
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

function sub_793710f7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    weiPixelPrice = arg1
    emit 0xf85a44f0: msg.sender, arg1
}

function sub_8cd11323(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pixelsPerCell = arg1
    emit 0xca9e27b9: msg.sender, arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call devAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAdOwner(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= adOwner.length:
        revert with 'NH{q', 50
    if address(adOwner[arg1].field_0) != msg.sender:
        revert with 0, 'Only owner allowed'
    address(adOwner[arg1].field_0) = arg2
    emit SetAdOwner(msg.sender, arg2, arg1);
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

function destroy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= adOwner.length:
        revert with 'NH{q', 50
    address(adOwner[arg1].field_0) = 0
    uint16(adOwner[arg1].field_160) = 0
    uint16(adOwner[arg1].field_176) = 0
    uint16(adOwner[arg1].field_192) = 0
    uint16(adOwner[arg1].field_208) = 0
    if bool(adOwner[arg1].field_256):
        if bool(adOwner[arg1].field_256) == uint255(adOwner[arg1].field_257) < 32:
            revert with 'NH{q', 34
        uint256(adOwner[arg1].field_256) = 0
        if 31 < uint255(adOwner[arg1].field_257):
            idx = 0
            while uint255(adOwner[arg1].field_257) + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * arg1) + ('name', 'adOwner', 2) + 1)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(adOwner[arg1].field_256) == adOwner[arg1].field_257 % 128 < 32:
            revert with 'NH{q', 34
        uint256(adOwner[arg1].field_256) = 0
        if 31 < adOwner[arg1].field_257 % 128:
            idx = 0
            while adOwner[arg1].field_257 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * arg1) + ('name', 'adOwner', 2) + 1)].field_0) = 0
                idx = idx + 1
                continue 
    if bool(adOwner[arg1].field_512):
        if bool(adOwner[arg1].field_512) == uint255(adOwner[arg1].field_513) < 32:
            revert with 'NH{q', 34
        uint256(adOwner[arg1].field_512) = 0
        if 31 < uint255(adOwner[arg1].field_513):
            idx = 0
            while uint255(adOwner[arg1].field_513) + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * arg1) + ('name', 'adOwner', 2) + 2)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(adOwner[arg1].field_512) == adOwner[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        uint256(adOwner[arg1].field_512) = 0
        if 31 < adOwner[arg1].field_513 % 128:
            idx = 0
            while adOwner[arg1].field_513 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * arg1) + ('name', 'adOwner', 2) + 2)].field_0) = 0
                idx = idx + 1
                continue 
    if bool(adOwner[arg1].field_768):
        if bool(adOwner[arg1].field_768) == uint255(adOwner[arg1].field_769) < 32:
            revert with 'NH{q', 34
        uint256(adOwner[arg1].field_768) = 0
        if 31 < uint255(adOwner[arg1].field_769):
            idx = 0
            while uint255(adOwner[arg1].field_769) + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * arg1) + ('name', 'adOwner', 2) + 3)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(adOwner[arg1].field_768) == adOwner[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        uint256(adOwner[arg1].field_768) = 0
        if 31 < adOwner[arg1].field_769 % 128:
            idx = 0
            while adOwner[arg1].field_769 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * arg1) + ('name', 'adOwner', 2) + 3)].field_0) = 0
                idx = idx + 1
                continue 
    emit Destroy(arg1);
}

function destroyAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adOwner.length = 0
    mem[0] = 2
    idx = 0
    while sha3(2) + (4 * adOwner.length) > idx + sha3(mem[0]):
        address(stor[idx + sha3(mem[0])].field_0) = 0
        uint16(stor[idx + sha3(mem[0])].field_160) = 0
        uint16(stor[idx + sha3(mem[0])].field_176) = 0
        uint16(stor[idx + sha3(mem[0])].field_192) = 0
        uint16(stor[idx + sha3(mem[0])].field_208) = 0
        if bool(stor[idx + sha3(mem[0]) + 1].field_0):
            if bool(stor[idx + sha3(mem[0]) + 1].field_0) == uint255(stor[idx + sha3(mem[0]) + 1].field_1) < 32:
                revert with 'NH{q', 34
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 >= uint255(stor[idx + sha3(mem[0]) + 1].field_1):
                if bool(stor[idx + sha3(mem[0]) + 2].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == uint255(stor[idx + sha3(mem[0]) + 2].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 >= uint255(stor[idx + sha3(mem[0]) + 2].field_1):
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                            if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                                revert with 'NH{q', 34
                            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                            if 31 < uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                                mem[0] = idx + sha3(mem[0]) + 3
                                s = sha3(idx + sha3(mem[0]) + 3)
                                while sha3(idx + sha3(mem[0]) + 3) + (uint255(stor[idx + sha3(mem[0]) + 3].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 4
                            continue 
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                        if 31 >= stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                            idx = idx + 4
                            continue 
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(s + sha3(mem[0]) + 3)
                        while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s + sha3(mem[0]):
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            s = s + 1
                            continue 
                        s = s + 4
                        continue 
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (uint255(stor[idx + sha3(mem[0]) + 2].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(idx + sha3(mem[0]) + 3)
                            while sha3(idx + sha3(mem[0]) + 3) + (uint255(stor[idx + sha3(mem[0]) + 3].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(idx + sha3(mem[0]) + 3)
                            while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == stor[idx + sha3(mem[0]) + 2].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 >= stor[idx + sha3(mem[0]) + 2].field_1 % 128:
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                            if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                                revert with 'NH{q', 34
                            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                            if 31 >= uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                                idx = idx + 4
                                continue 
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(s + sha3(mem[0]) + 3)
                            while sha3(s + sha3(mem[0]) + 3) + (uint255(stor[s + sha3(mem[0]) + 3].field_1) + 31 / 32) > s + sha3(mem[0]):
                                uint256(stor[s + sha3(mem[0])].field_0) = 0
                                s = s + 1
                                continue 
                            s = s + 4
                            continue 
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(idx + sha3(mem[0]) + 3)
                            while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                            if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                                revert with 'NH{q', 34
                            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                            if 31 < uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                                mem[0] = idx + sha3(mem[0]) + 3
                                s = sha3(idx + sha3(mem[0]) + 3)
                                while sha3(idx + sha3(mem[0]) + 3) + (uint255(stor[idx + sha3(mem[0]) + 3].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                            if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                                mem[0] = idx + sha3(mem[0]) + 3
                                s = sha3(idx + sha3(mem[0]) + 3)
                                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
            else:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (uint255(stor[idx + sha3(mem[0]) + 1].field_1) + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if bool(stor[idx + sha3(mem[0]) + 2].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == uint255(stor[idx + sha3(mem[0]) + 2].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0]) + 2].field_1):
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (uint255(stor[idx + sha3(mem[0]) + 2].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == stor[idx + sha3(mem[0]) + 2].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 2].field_1 % 128:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + (uint255(stor[idx + sha3(mem[0]) + 3].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
        else:
            if bool(stor[idx + sha3(mem[0]) + 1].field_0) == stor[idx + sha3(mem[0]) + 1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].field_1 % 128:
                if bool(stor[idx + sha3(mem[0]) + 2].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == uint255(stor[idx + sha3(mem[0]) + 2].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 >= uint255(stor[idx + sha3(mem[0]) + 2].field_1):
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                            if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                                revert with 'NH{q', 34
                            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                            if 31 >= uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                                idx = idx + 4
                                continue 
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(s + sha3(mem[0]) + 3)
                            while sha3(s + sha3(mem[0]) + 3) + (uint255(stor[s + sha3(mem[0]) + 3].field_1) + 31 / 32) > s + sha3(mem[0]):
                                uint256(stor[s + sha3(mem[0])].field_0) = 0
                                s = s + 1
                                continue 
                            s = s + 4
                            continue 
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(idx + sha3(mem[0]) + 3)
                            while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (uint255(stor[idx + sha3(mem[0]) + 2].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                            if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                                revert with 'NH{q', 34
                            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                            if 31 < uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                                mem[0] = idx + sha3(mem[0]) + 3
                                s = sha3(idx + sha3(mem[0]) + 3)
                                while sha3(idx + sha3(mem[0]) + 3) + (uint255(stor[idx + sha3(mem[0]) + 3].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                            if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                                mem[0] = idx + sha3(mem[0]) + 3
                                s = sha3(idx + sha3(mem[0]) + 3)
                                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == stor[idx + sha3(mem[0]) + 2].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 2].field_1 % 128:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(idx + sha3(mem[0]) + 3)
                            while sha3(idx + sha3(mem[0]) + 3) + (uint255(stor[idx + sha3(mem[0]) + 3].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(idx + sha3(mem[0]) + 3)
                            while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
            else:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].field_1 % 128 + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if bool(stor[idx + sha3(mem[0]) + 2].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == uint255(stor[idx + sha3(mem[0]) + 2].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0]) + 2].field_1):
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (uint255(stor[idx + sha3(mem[0]) + 2].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0]) + 2].field_0) == stor[idx + sha3(mem[0]) + 2].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 2].field_1 % 128:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                if bool(stor[idx + sha3(mem[0]) + 3].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 3].field_0) == uint255(stor[idx + sha3(mem[0]) + 3].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0]) + 3].field_1):
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + (uint255(stor[idx + sha3(mem[0]) + 3].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0]) + 3].field_0) == stor[idx + sha3(mem[0]) + 3].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 3].field_1 % 128:
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
        idx = idx + 4
        continue 
    emit 0xd4ff8c0a 
}



}
