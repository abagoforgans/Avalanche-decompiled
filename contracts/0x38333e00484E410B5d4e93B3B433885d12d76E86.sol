contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c67766d(?)
#  - sub_23bda306(?)
#  - listTokensNames()
#  - withdraw(uint8 arg1, address arg2, uint256 arg3, uint8 arg4)
#  - create(uint8 arg1, uint256 arg2, uint8 arg3, bytes32 arg4)
#  - sub_8a91497b(?)
#  - sub_9b7e76c1(?)
#  - sub_bbaed29d(?)
#  - _fallback()
#
address owner;
mapping of uint8 stor1;
uint8 stor3; offset 176
uint8 sub_73d24980; offset 184
uint64 stor3; offset 192
address swapperAddress; offset 16
mapping of struct sub_8856c0d6;
mapping of uint8 addresses;
mapping of struct sub_ecbbd497;
mapping of struct orders;
array of struct stor8;
mapping of uint256 stor9;
mapping of uint8 stor10;

function isCompleted(uint256 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor10[arg1][arg2])
}

function swapper() {
    return swapperAddress
}

function sub_62cf39ab(?) {
    return bool(uint8(stor3.field_176))
}

function trusted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_73d24980(?) {
    return sub_73d24980
}

function addresses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addresses[arg1]
}

function sub_8856c0d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_8856c0d6[arg1].field_0, 
           sub_8856c0d6[arg1].field_256,
           sub_8856c0d6[arg1].field_256,
           sub_8856c0d6[arg1].field_512,
           sub_8856c0d6[arg1].field_768,
           sub_8856c0d6[arg1].field_1024,
           sub_8856c0d6[arg1].field_1280
}

function owner() {
    return owner
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1280,
           orders[arg1].field_1280,
           orders[arg1].field_1536
}

function sub_ecbbd497(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    return sub_ecbbd497[arg1][arg2].field_0, 
           sub_ecbbd497[arg1][arg2].field_256,
           sub_ecbbd497[arg1][arg2].field_512,
           sub_ecbbd497[arg1][arg2].field_768,
           bool(sub_ecbbd497[arg1][arg2].field_1024)
}

function completed(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapperAddress = arg1
}

function setBonus(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8856c0d6[arg1 << 248].field_1280 = arg2
}

function setTrusted(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function setFeeTarget(uint8 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8856c0d6[arg1 << 248].field_256 = arg2
}

function setDefaultFee(uint8 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10000:
        revert with 0, 'invalid fee'
    sub_8856c0d6[arg1 << 248].field_416 = arg2
}

function setDirectTransferAllowed(uint8 arg1, uint8 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ecbbd497[arg1 << 248][arg2 << 248].field_1024 = uint8(arg3)
}

function setSwapSettings(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_176) = uint8(arg1)
    sub_73d24980 = arg2
    uint64(stor3.field_192) = Mask(64, 16, arg1) >> 16
}

function setFee(uint8 arg1, uint8 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0, 'invalid fee'
    sub_ecbbd497[arg1 << 248][arg2 << 248].field_0 = arg3
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

function sub_766a1c66(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require calldata.size - 68 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg3 == uint16(arg3)
    sub_ecbbd497[arg1 << 248][arg2 << 248].field_0 = uint16(arg3)
    sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg4
    sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg5
    sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg6
    require arg7 == bool(arg7)
    sub_ecbbd497[arg1 << 248][arg2 << 248].field_1024 = uint8(bool(arg7))
}

function closeOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not trusted'
    if stor9[arg1]:
        if stor9[arg1] < 1:
            revert with 0, 17
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 >= stor8.length:
            revert with 0, 50
        if stor9[arg1] - 1 >= stor8.length:
            revert with 0, 50
        stor8[stor9[arg1]].field_0 = stor8[stor8.length].field_0
        if 1 > !(stor9[arg1] - 1):
            revert with 0, 17
        stor9[stor8[stor8.length].field_0] = stor9[arg1]
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length].field_0 = 0
        stor8.length--
        stor9[arg1] = 0
}

function sub_12394191(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not trusted'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 9
        if stor9[cd[((32 * idx) + cd[4] + 36)]]:
            if stor9[cd[((32 * idx) + cd[4] + 36)]] < 1:
                revert with 0, 17
            if stor8.length < 1:
                revert with 0, 17
            if stor8.length - 1 >= stor8.length:
                revert with 0, 50
            if stor9[cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor8.length:
                revert with 0, 50
            stor8[stor9[cd[((32 * idx) + cd[4] + 36)]]].field_0 = stor8[stor8.length].field_0
            if 1 > !(stor9[cd[((32 * idx) + cd[4] + 36)]] - 1):
                revert with 0, 17
            stor9[stor8[stor8.length].field_0] = stor9[cd[((32 * idx) + cd[4] + 36)]]
            if not stor8.length:
                revert with 0, 49
            stor8[stor8.length].field_0 = 0
            stor8.length--
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            stor9[cd[((32 * idx) + cd[4] + 36)]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setDefaultFeeBase(uint8 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        if 1 == sub_8856c0d6[arg1 << 248].field_0:
            if arg2 and 10^18 > -1 / arg2:
                revert with 0, 17
            sub_8856c0d6[arg1 << 248].field_512 = 10^18 * arg2
        else:
            require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
            staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                sub_8856c0d6[arg1 << 248].field_512 = arg2
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    sub_8856c0d6[arg1 << 248].field_512 = arg2 * 10^ext_call.return_data[31 len 1]
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    sub_8856c0d6[arg1 << 248].field_512 = arg2 * s * t
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not 10^arg3:
                    revert with 0, 18
                sub_8856c0d6[arg1 << 248].field_512 = 10^18 * arg2 / 10^arg3
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    sub_8856c0d6[arg1 << 248].field_512 = arg2 / 10^arg3
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not 10^arg3:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_512 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg2 and s * t > -1 / arg2:
                            revert with 0, 17
                        if not 10^arg3:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_512 = arg2 * s * t / 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                sub_8856c0d6[arg1 << 248].field_512 = 10^18 * arg2 / s * t
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    sub_8856c0d6[arg1 << 248].field_512 = arg2 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_512 = arg2 * 10^ext_call.return_data[31 len 1] / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg2 and u * v > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_512 = arg2 * u * v / s * t
}

function setDefaultMinAmount(uint8 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        if 1 == sub_8856c0d6[arg1 << 248].field_0:
            if arg2 and 10^18 > -1 / arg2:
                revert with 0, 17
            sub_8856c0d6[arg1 << 248].field_768 = 10^18 * arg2
        else:
            require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
            staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                sub_8856c0d6[arg1 << 248].field_768 = arg2
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    sub_8856c0d6[arg1 << 248].field_768 = arg2 * 10^ext_call.return_data[31 len 1]
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    sub_8856c0d6[arg1 << 248].field_768 = arg2 * s * t
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not 10^arg3:
                    revert with 0, 18
                sub_8856c0d6[arg1 << 248].field_768 = 10^18 * arg2 / 10^arg3
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    sub_8856c0d6[arg1 << 248].field_768 = arg2 / 10^arg3
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not 10^arg3:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg2 and s * t > -1 / arg2:
                            revert with 0, 17
                        if not 10^arg3:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_768 = arg2 * s * t / 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                sub_8856c0d6[arg1 << 248].field_768 = 10^18 * arg2 / s * t
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    sub_8856c0d6[arg1 << 248].field_768 = arg2 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg2 and u * v > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_768 = arg2 * u * v / s * t
}

function setDefaultMaxAmount(uint8 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        if 1 == sub_8856c0d6[arg1 << 248].field_0:
            if arg2 and 10^18 > -1 / arg2:
                revert with 0, 17
            sub_8856c0d6[arg1 << 248].field_1024 = 10^18 * arg2
        else:
            require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
            staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                sub_8856c0d6[arg1 << 248].field_1024 = arg2
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    sub_8856c0d6[arg1 << 248].field_1024 = arg2 * 10^ext_call.return_data[31 len 1]
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    sub_8856c0d6[arg1 << 248].field_1024 = arg2 * s * t
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not 10^arg3:
                    revert with 0, 18
                sub_8856c0d6[arg1 << 248].field_1024 = 10^18 * arg2 / 10^arg3
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    sub_8856c0d6[arg1 << 248].field_1024 = arg2 / 10^arg3
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not 10^arg3:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg2 and s * t > -1 / arg2:
                            revert with 0, 17
                        if not 10^arg3:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_1024 = arg2 * s * t / 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                sub_8856c0d6[arg1 << 248].field_1024 = 10^18 * arg2 / s * t
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    sub_8856c0d6[arg1 << 248].field_1024 = arg2 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg2 and u * v > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_8856c0d6[arg1 << 248].field_1024 = arg2 * u * v / s * t
}

function setFeeBase(uint8 arg1, uint8 arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg4:
        if 1 == sub_8856c0d6[arg1 << 248].field_0:
            if arg3 and 10^18 > -1 / arg3:
                revert with 0, 17
            sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = 10^18 * arg3
        else:
            require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
            staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 0, 17
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 * 10^ext_call.return_data[31 len 1]
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg3 and s * t > -1 / arg3:
                        revert with 0, 17
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 * s * t
    else:
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if not 10^arg4:
                    revert with 0, 18
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = 10^18 * arg3 / 10^arg4
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not 10^arg4:
                        revert with 0, 18
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 / 10^arg4
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg3 and s * t > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 * s * t / 10^arg4
        else:
            s = 10
            t = 1
            idx = arg4
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = 10^18 * arg3 / s * t
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 * 10^ext_call.return_data[31 len 1] / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg3 and u * v > -1 / arg3:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_256 = arg3 * u * v / s * t
}

function setMaxAmount(uint8 arg1, uint8 arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg4:
        if 1 == sub_8856c0d6[arg1 << 248].field_0:
            if arg3 and 10^18 > -1 / arg3:
                revert with 0, 17
            sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = 10^18 * arg3
        else:
            require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
            staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 0, 17
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 * 10^ext_call.return_data[31 len 1]
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg3 and s * t > -1 / arg3:
                        revert with 0, 17
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 * s * t
    else:
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if not 10^arg4:
                    revert with 0, 18
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = 10^18 * arg3 / 10^arg4
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not 10^arg4:
                        revert with 0, 18
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 / 10^arg4
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg3 and s * t > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 * s * t / 10^arg4
        else:
            s = 10
            t = 1
            idx = arg4
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = 10^18 * arg3 / s * t
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 * 10^ext_call.return_data[31 len 1] / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg3 and u * v > -1 / arg3:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_768 = arg3 * u * v / s * t
}

function setMinAmount(uint8 arg1, uint8 arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg4:
        if 1 == sub_8856c0d6[arg1 << 248].field_0:
            if arg3 and 10^18 > -1 / arg3:
                revert with 0, 17
            sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = 10^18 * arg3
        else:
            require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
            staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 0, 17
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 * 10^ext_call.return_data[31 len 1]
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg3 and s * t > -1 / arg3:
                        revert with 0, 17
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 * s * t
    else:
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if not 10^arg4:
                    revert with 0, 18
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = 10^18 * arg3 / 10^arg4
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not 10^arg4:
                        revert with 0, 18
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 / 10^arg4
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg3 and s * t > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 * s * t / 10^arg4
        else:
            s = 10
            t = 1
            idx = arg4
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 1 == sub_8856c0d6[arg1 << 248].field_0:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = 10^18 * arg3 / s * t
            else:
                require ext_code.size(sub_8856c0d6[arg1 << 248].field_0)
                staticcall sub_8856c0d6[arg1 << 248].field_0.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 * 10^ext_call.return_data[31 len 1] / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg3 and u * v > -1 / arg3:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        sub_ecbbd497[arg1 << 248][arg2 << 248].field_512 = arg3 * u * v / s * t
}

function listOrders() {
    if stor8.length > test266151307():
        revert with 0, 65
    mem[96] = stor8.length
    mem[64] = (32 * stor8.length) + 128
    if not stor8.length:
        if var30002 >= stor8.length:
            mem[(32 * stor8.length) + 128] = 32
            mem[(32 * stor8.length) + 160] = stor8.length
            idx = 0
            s = 128
            t = (32 * stor8.length) + 192
            while idx < mem[96]:
                _198 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_198 + 63 len 1]
                mem[t + 64] = mem[_198 + 76 len 20]
                mem[t + 96] = mem[_198 + 96]
                mem[t + 128] = mem[_198 + 128]
                mem[t + 160] = mem[_198 + 160]
                mem[t + 192] = mem[_198 + 223 len 1]
                mem[t + 224] = mem[_198 + 255 len 1]
                mem[t + 256] = mem[_198 + 268 len 20]
                mem[t + 288] = mem[_198 + 288]
                idx = idx + 1
                s = s + 32
                t = t + 320
                continue 
            return memory
              from mem[64]
               len (353 * stor8.length) + -mem[64] + 192
        if var36001 >= stor8.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var38002 < stor8.length:
            mem[0] = var42001
            mem[32] = 7
            mem[64] = (32 * stor8.length) + 448
            mem[(32 * stor8.length) + 128] = orders[var42001].field_0
            mem[(32 * stor8.length) + 160] = orders[var42001].field_256
            mem[(32 * stor8.length) + 192] = orders[var42001].field_264
            mem[(32 * stor8.length) + 224] = orders[var42001].field_512
            mem[(32 * stor8.length) + 256] = orders[var42001].field_768
            mem[(32 * stor8.length) + 288] = orders[var42001].field_1024
            mem[(32 * stor8.length) + 320] = orders[var42001].field_1280
            mem[(32 * stor8.length) + 352] = orders[var42001].field_1288
            mem[(32 * stor8.length) + 384] = orders[var42001].field_1296
            mem[(32 * stor8.length) + 416] = orders[var42001].field_1536
            s = var42001
            idx = var42008
            while idx < stor8.length:
                mem[(32 * idx) + 128] = (32 * stor8.length) + 128
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor8.length:
                    _472 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor8.length
                    t = 0
                    s = 128
                    u = mem[64] + 64
                    while t < stor8.length:
                        _505 = mem[s]
                        mem[u] = mem[mem[s]]
                        mem[u + 32] = mem[_505 + 63 len 1]
                        mem[u + 64] = mem[_505 + 76 len 20]
                        mem[u + 96] = mem[_505 + 96]
                        mem[u + 128] = mem[_505 + 128]
                        mem[u + 160] = mem[_505 + 160]
                        mem[u + 192] = mem[_505 + 223 len 1]
                        mem[u + 224] = mem[_505 + 255 len 1]
                        mem[u + 256] = mem[_505 + 268 len 20]
                        mem[u + 288] = mem[_505 + 288]
                        mem[0] = t + 1
                        mem[32] = 7
                        mem[64] = mem[64] + 320
                        mem[(32 * stor8.length) + 128] = orders[t + 1].field_0
                        mem[(32 * stor8.length) + 160] = orders[var42001].field_256
                        mem[(32 * stor8.length) + 192] = orders[var42001].field_264
                        mem[(32 * stor8.length) + 224] = orders[var42001].field_512
                        mem[(32 * stor8.length) + 256] = orders[var42001].field_768
                        mem[(32 * stor8.length) + 288] = orders[var42001].field_1024
                        mem[(32 * stor8.length) + 320] = orders[var42001].field_1280
                        mem[(32 * stor8.length) + 352] = orders[var42001].field_1288
                        mem[(32 * stor8.length) + 384] = orders[var42001].field_1296
                        mem[(32 * stor8.length) + 416] = orders[var42001].field_1536
                        t = t + 1
                        s = s + 32
                        u = u + 320
                        continue 
                    return memory
                      from mem[64]
                       len _472 + (320 * stor8.length) + -mem[64] + 64
                mem[0] = stor8[idx].field_512
                mem[32] = 7
                mem[64] = mem[64] + 320
                mem[(32 * stor8.length) + 128] = orders[stor8[idx].field_512].field_0
                mem[(32 * stor8.length) + 160] = orders[var42001].field_256
                mem[(32 * stor8.length) + 192] = orders[var42001].field_264
                mem[(32 * stor8.length) + 224] = orders[var42001].field_512
                mem[(32 * stor8.length) + 256] = orders[var42001].field_768
                mem[(32 * stor8.length) + 288] = orders[var42001].field_1024
                mem[(32 * stor8.length) + 320] = orders[var42001].field_1280
                mem[(32 * stor8.length) + 352] = orders[var42001].field_1288
                mem[(32 * stor8.length) + 384] = orders[var42001].field_1296
                mem[(32 * stor8.length) + 416] = orders[var42001].field_1536
                s = stor8[idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor8.length) + 448
        mem[(32 * stor8.length) + 128] = 0
        mem[(32 * stor8.length) + 160] = 0
        mem[(32 * stor8.length) + 192] = 0
        mem[(32 * stor8.length) + 224] = 0
        mem[(32 * stor8.length) + 256] = 0
        mem[(32 * stor8.length) + 288] = 0
        mem[(32 * stor8.length) + 320] = 0
        mem[(32 * stor8.length) + 352] = 0
        mem[(32 * stor8.length) + 384] = 0
        mem[(32 * stor8.length) + 416] = 0
        mem[128] = (32 * stor8.length) + 128
        s = 128
        idx = stor8.length
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * stor8.length) + 128] = 0
            mem[(32 * stor8.length) + 160] = 0
            mem[(32 * stor8.length) + 192] = 0
            mem[(32 * stor8.length) + 224] = 0
            mem[(32 * stor8.length) + 256] = 0
            mem[(32 * stor8.length) + 288] = 0
            mem[(32 * stor8.length) + 320] = 0
            mem[(32 * stor8.length) + 352] = 0
            mem[(32 * stor8.length) + 384] = 0
            mem[(32 * stor8.length) + 416] = 0
            mem[s + 32] = (32 * stor8.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var34002 >= stor8.length:
            _210 = mem[64]
            mem[mem[64]] = 32
            _212 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _212:
                _262 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_262 + 63 len 1]
                mem[t + 64] = mem[_262 + 76 len 20]
                mem[t + 96] = mem[_262 + 96]
                mem[t + 128] = mem[_262 + 128]
                mem[t + 160] = mem[_262 + 160]
                mem[t + 192] = mem[_262 + 223 len 1]
                mem[t + 224] = mem[_262 + 255 len 1]
                mem[t + 256] = mem[_262 + 268 len 20]
                mem[t + 288] = mem[_262 + 288]
                idx = idx + 1
                s = s + 32
                t = t + 320
                continue 
            return memory
              from mem[64]
               len _210 + (320 * _212) + -mem[64] + 64
        if var40001 >= stor8.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var42002 < stor8.length:
            mem[0] = var46001
            mem[32] = 7
            _503 = mem[64]
            mem[64] = mem[64] + 320
            mem[_503] = orders[var46001].field_0
            mem[_503 + 32] = orders[var46001].field_256
            mem[_503 + 64] = orders[var46001].field_264
            mem[_503 + 96] = orders[var46001].field_512
            mem[_503 + 128] = orders[var46001].field_768
            mem[_503 + 160] = orders[var46001].field_1024
            mem[_503 + 192] = orders[var46001].field_1280
            mem[_503 + 224] = orders[var46001].field_1288
            mem[_503 + 256] = orders[var46001].field_1296
            mem[_503 + 288] = orders[var46001].field_1536
            _504 = mem[96]
            s = var46001
            idx = var46008
            while idx < _504:
                mem[(32 * idx) + 128] = _503
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor8.length:
                    _517 = mem[64]
                    mem[mem[64]] = 32
                    _518 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    t = 0
                    s = 128
                    u = mem[64] + 64
                    while t < _518:
                        _532 = mem[s]
                        mem[u] = mem[mem[s]]
                        mem[u + 32] = mem[_532 + 63 len 1]
                        mem[u + 64] = mem[_532 + 76 len 20]
                        mem[u + 96] = mem[_532 + 96]
                        mem[u + 128] = mem[_532 + 128]
                        mem[u + 160] = mem[_532 + 160]
                        mem[u + 192] = mem[_532 + 223 len 1]
                        mem[u + 224] = mem[_532 + 255 len 1]
                        mem[u + 256] = mem[_532 + 268 len 20]
                        mem[u + 288] = mem[_532 + 288]
                        mem[0] = t + 1
                        mem[32] = 7
                        _503 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_503] = orders[t + 1].field_0
                        mem[_503 + 32] = orders[var46001].field_256
                        mem[_503 + 64] = orders[var46001].field_264
                        mem[_503 + 96] = orders[var46001].field_512
                        mem[_503 + 128] = orders[var46001].field_768
                        mem[_503 + 160] = orders[var46001].field_1024
                        mem[_503 + 192] = orders[var46001].field_1280
                        mem[_503 + 224] = orders[var46001].field_1288
                        mem[_503 + 256] = orders[var46001].field_1296
                        mem[_503 + 288] = orders[var46001].field_1536
                        t = t + 1
                        s = s + 32
                        u = u + 320
                        continue 
                    return memory
                      from mem[64]
                       len _517 + (320 * _518) + -mem[64] + 64
                mem[0] = stor8[idx].field_512
                mem[32] = 7
                _503 = mem[64]
                mem[64] = mem[64] + 320
                mem[_503] = orders[stor8[idx].field_512].field_0
                mem[_503 + 32] = orders[var46001].field_256
                mem[_503 + 64] = orders[var46001].field_264
                mem[_503 + 96] = orders[var46001].field_512
                mem[_503 + 128] = orders[var46001].field_768
                mem[_503 + 160] = orders[var46001].field_1024
                mem[_503 + 192] = orders[var46001].field_1280
                mem[_503 + 224] = orders[var46001].field_1288
                mem[_503 + 256] = orders[var46001].field_1296
                mem[_503 + 288] = orders[var46001].field_1536
                s = stor8[idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}



}
