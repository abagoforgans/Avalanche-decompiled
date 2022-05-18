contract main {




// =====================  Runtime code  =====================


#
#  - swapExactTokenIn(address arg1, address arg2, uint256 arg3, uint256 arg4)
#
array of address stor1;
array of struct stor2;
address referralAddress;

function referralAddress() {
    return referralAddress
}

function owner() {
    return stor1.length
}

function _fallback() payable {
    revert
}

function isETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1)
}

function renounceOwnership() {
    if stor1.length != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(stor1.length, 0);
    stor1.length = 0
}

function setReferalAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    referralAddress = arg1
}

function rescueETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(stor1.length, arg1);
    stor1.length = arg1
}

function rescueERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor1.length != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function getExchangeOrder(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 2)
    mem[160] = uint256(stor2[address(arg1)][address(arg2)].field_0)
    if not uint256(stor2[address(arg1)][address(arg2)].field_0):
        mem[96] = 160
        mem[64] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + (32 * uint256(stor2[address(arg1)][address(arg2)].field_256)) + 224
        mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192] = uint256(stor2[address(arg1)][address(arg2)].field_256)
        s = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 224
        idx = 0
        while idx < uint256(stor2[address(arg1)][address(arg2)].field_256):
            mem[0] = sha3(address(arg2), sha3(address(arg1), 2)) + 1
            _16 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) + 32
            mem[_16] = uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
            if uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0):
                mem[0] = idx + sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1)
                mem[_16 + 32] = address(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
                t = _16 + 32
                u = sha3(mem[0])
                while _16 + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[s] = _16
            s = s + 32
            idx = idx + 1
            continue 
        mem[128] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192
        _14 = mem[96]
        mem[mem[64]] = 32
        _19 = mem[_14]
        mem[mem[64] + 32] = mem[_14]
        mem[mem[64] + 64 len 32 * _19] = mem[_14 + 32 len 32 * _19]
        return 32, mem[mem[64] + 32 len (32 * _19) + 32]
    mem[0] = sha3(address(arg2), sha3(address(arg1), 2))
    mem[192] = uint256(stor2[address(arg1)][address(arg2)].field_0)
    idx = 192
    s = 0
    while (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192 > idx + 32:
        mem[idx + 32] = uint256(stor2[address(arg1)][address(arg2)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[96] = 160
    mem[64] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + (32 * uint256(stor2[address(arg1)][address(arg2)].field_256)) + 224
    mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192] = uint256(stor2[address(arg1)][address(arg2)].field_256)
    s = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 224
    idx = 0
    while idx < uint256(stor2[address(arg1)][address(arg2)].field_256):
        mem[0] = sha3(address(arg2), sha3(address(arg1), 2)) + 1
        _35 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) + 32
        mem[_35] = uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
        if uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0):
            mem[0] = idx + sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1)
            mem[_35 + 32] = address(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
            t = _35 + 32
            u = sha3(mem[0])
            while _35 + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _35
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192
    _33 = mem[96]
    mem[mem[64]] = 32
    _38 = mem[_33]
    mem[mem[64] + 32] = mem[_33]
    mem[mem[64] + 64 len 32 * _38] = mem[_33 + 32 len 32 * _38]
    return 32, mem[mem[64] + 32 len (32 * _38) + 32]
}

function getPath(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 2)
    mem[160] = uint256(stor2[address(arg1)][address(arg2)].field_0)
    if not uint256(stor2[address(arg1)][address(arg2)].field_0):
        mem[96] = 160
        mem[64] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + (32 * uint256(stor2[address(arg1)][address(arg2)].field_256)) + 224
        mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192] = uint256(stor2[address(arg1)][address(arg2)].field_256)
        s = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 224
        idx = 0
        while idx < uint256(stor2[address(arg1)][address(arg2)].field_256):
            mem[0] = sha3(address(arg2), sha3(address(arg1), 2)) + 1
            _18 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) + 32
            mem[_18] = uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
            if uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0):
                mem[0] = idx + sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1)
                mem[_18 + 32] = address(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
                t = _18 + 32
                u = sha3(mem[0])
                while _18 + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[s] = _18
            s = s + 32
            idx = idx + 1
            continue 
        mem[128] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192
        _19 = mem[64]
        mem[mem[64]] = 32
        _21 = mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192]
        mem[mem[64] + 32] = mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192]
        idx = 0
        s = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 224
        t = mem[64] + 64
        u = mem[64] + (32 * _21) + 64
        while idx < _21:
            mem[t] = u + -_19 - 64
            _27 = mem[s]
            _29 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _27 + 32
            x = u + 32
            while v < _29:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _29 + 1
            w = _27 + (32 * _29) + 64
            t = t + 32
            u = u + (32 * _29) + 32
            continue 
    else:
        mem[0] = sha3(address(arg2), sha3(address(arg1), 2))
        mem[192] = uint256(stor2[address(arg1)][address(arg2)].field_0)
        idx = 192
        s = 0
        while (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192 > idx + 32:
            mem[idx + 32] = uint256(stor2[address(arg1)][address(arg2)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[96] = 160
        mem[64] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + (32 * uint256(stor2[address(arg1)][address(arg2)].field_256)) + 224
        mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192] = uint256(stor2[address(arg1)][address(arg2)].field_256)
        s = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 224
        idx = 0
        while idx < uint256(stor2[address(arg1)][address(arg2)].field_256):
            mem[0] = sha3(address(arg2), sha3(address(arg1), 2)) + 1
            _44 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) + 32
            mem[_44] = uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
            if uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0):
                mem[0] = idx + sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1)
                mem[_44 + 32] = address(stor2[address(arg1)][address(arg2)][idx + 1].field_0)
                t = _44 + 32
                u = sha3(mem[0])
                while _44 + (32 * uint256(stor2[address(arg1)][address(arg2)][idx + 1].field_0)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[s] = _44
            s = s + 32
            idx = idx + 1
            continue 
        mem[128] = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192
        _45 = mem[64]
        mem[mem[64]] = 32
        _47 = mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192]
        mem[mem[64] + 32] = mem[(32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 192]
        idx = 0
        s = (32 * uint256(stor2[address(arg1)][address(arg2)].field_0)) + 224
        t = mem[64] + 64
        u = mem[64] + (32 * _47) + 64
        while idx < _47:
            mem[t] = u + -_45 - 64
            _52 = mem[s]
            _54 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _52 + 32
            x = u + 32
            while v < _54:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _54 + 1
            w = _52 + (32 * _54) + 64
            t = t + 32
            u = u + (32 * _54) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function setRoute(address arg1, address arg2, uint256[] arg3, address[][] arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        require arg4 + cd[s] + 67 < calldata.size
        require cd[(arg4 + cd[s] + 36)] <= test266151307()
        _73 = mem[64]
        require mem[64] + (32 * cd[(arg4 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[s] + 36)]) + 32
        mem[_73] = cd[(arg4 + cd[s] + 36)]
        require calldata.size >= arg4 + cd[s] + (32 * cd[(arg4 + cd[s] + 36)]) + 68
        u = 0
        v = arg4 + cd[s] + 68
        w = _73 + 32
        while u < cd[(arg4 + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _73
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1.length != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    _64 = mem[64]
    mem[64] = mem[64] + 64
    mem[_64] = 96
    mem[_64 + 32] = (32 * arg3.length) + 128
    mem[32] = sha3(address(arg1), 2)
    uint256(stor2[address(arg1)][address(arg2)].field_0) = mem[96]
    if not mem[96]:
        s = 0
        while uint256(stor2[address(arg1)][address(arg2)].field_0) > s:
            uint256(stor2[address(arg1)][address(arg2)][s].field_0) = 0
            s = s + 1
            continue 
        uint256(stor2[address(arg1)][address(arg2)].field_256) = mem[(32 * arg3.length) + 128]
        mem[0] = sha3(address(arg2), sha3(address(arg1), 2)) + 1
        if not mem[(32 * arg3.length) + 128]:
            idx = 0
            while sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1) + uint256(stor2[address(arg1)][address(arg2)].field_256) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg3.length) + 160
            while (32 * arg3.length) + (32 * mem[(32 * arg3.length) + 128]) + 160 > idx:
                _113 = mem[idx]
                _114 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _114:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _113 + 32
                    while _113 + (32 * _114) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _114) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1) + uint256(stor2[address(arg1)][address(arg2)].field_256) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor2[address(arg1)][address(arg2)][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while uint256(stor2[address(arg1)][address(arg2)].field_0) > idx:
            uint256(stor2[address(arg1)][address(arg2)][idx].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor2[address(arg1)][address(arg2)].field_256) = mem[(32 * arg3.length) + 128]
        mem[0] = sha3(address(arg2), sha3(address(arg1), 2)) + 1
        if not mem[(32 * arg3.length) + 128]:
            idx = 0
            while sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1) + uint256(stor2[address(arg1)][address(arg2)].field_256) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg3.length) + 160
            while (32 * arg3.length) + (32 * mem[(32 * arg3.length) + 128]) + 160 > idx:
                _129 = mem[idx]
                _130 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _130:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _129 + 32
                    while _129 + (32 * _130) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _130) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(address(arg2), sha3(address(arg1), 2)) + 1) + uint256(stor2[address(arg1)][address(arg2)].field_256) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
}

function setRouteBatch(address[] arg1, address[] arg2, uint256[][] arg3, address[][][] arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 192 >= 160 and (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 <= test266151307()
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + 192
    while idx < arg3.length:
        require arg3 + cd[s] + 67 < calldata.size
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        _145 = mem[64]
        require mem[64] + (32 * cd[(arg3 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg3 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg3 + cd[s] + 36)]) + 32
        mem[_145] = cd[(arg3 + cd[s] + 36)]
        require calldata.size >= arg3 + cd[s] + (32 * cd[(arg3 + cd[s] + 36)]) + 68
        u = 0
        v = arg3 + cd[v] + 68
        w = _145 + 32
        while u < cd[(arg3 + cd[v] + 36)]:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[w] = _145
        u = u + 1
        v = v + 32
        w = w + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    _146 = mem[64]
    require mem[64] + (32 * arg4.length) + 32 >= mem[64] and mem[64] + (32 * arg4.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg4.length) + 32
    mem[_146] = arg4.length
    idx = 0
    s = arg4 + 36
    t = _146 + 32
    while idx < arg4.length:
        require arg4 + cd[s] + 67 < calldata.size
        require cd[(arg4 + cd[s] + 36)] <= test266151307()
        _195 = mem[64]
        require mem[64] + (32 * cd[(arg4 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[s] + 36)]) + 32
        mem[_195] = cd[(arg4 + cd[s] + 36)]
        u = 0
        v = arg4 + cd[s] + 68
        w = _195 + 32
        while u < cd[(arg4 + cd[s] + 36)]:
            require arg4 + cd[s] + cd[v] + 99 < calldata.size
            require cd[(arg4 + cd[s] + cd[v] + 68)] <= test266151307()
            _244 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[s] + cd[v] + 68)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[s] + cd[v] + 68)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[s] + cd[v] + 68)]) + 32
            mem[_244] = cd[(arg4 + cd[s] + cd[v] + 68)]
            require calldata.size >= arg4 + cd[s] + cd[v] + (32 * cd[(arg4 + cd[s] + cd[v] + 68)]) + 100
            t = 0
            x = arg4 + cd[s] + cd[v] + 100
            y = _244 + 32
            while t < cd[(arg4 + cd[s] + cd[v] + 68)]:
                require cd[x] == address(cd[x])
                mem[y] = cd[x]
                t = t + 1
                x = x + 32
                y = y + 32
                continue 
            mem[w] = _244
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _195
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1.length != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    _235 = mem[96]
    idx = 0
    while idx < _235:
        require idx < mem[96]
        _237 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _239 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _241 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[_146]
        _243 = mem[(32 * idx) + _146 + 32]
        if stor1.length != msg.sender:
            revert with 0, 'lOwnable: caller is not the owne'
        _245 = mem[64]
        mem[64] = mem[64] + 64
        mem[_245] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[_245 + 32] = _243
        mem[0] = address(_239)
        mem[32] = sha3(address(_237), 2)
        _249 = mem[_241]
        uint256(stor2[address(_237)][address(_239)].field_0) = mem[_241]
        mem[0] = sha3(address(_239), sha3(address(_237), 2))
        if not _249:
            s = sha3(sha3(address(_239), sha3(address(_237), 2)))
            while sha3(sha3(address(_239), sha3(address(_237), 2))) + uint256(stor2[address(_237)][address(_239)].field_0) > s:
                uint256(stor[s]) = 0
                _235 = mem[96]
                s = s + 1
                continue 
            _276 = mem[_243]
            uint256(stor2[address(_237)][address(_239)].field_256) = mem[_243]
            mem[0] = sha3(address(_239), sha3(address(_237), 2)) + 1
            if not _276:
                s = sha3(mem[0])
                while sha3(sha3(address(_239), sha3(address(_237), 2)) + 1) + uint256(stor2[address(_237)][address(_239)].field_256) > s:
                    uint256(stor[s]) = 0
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + uint256(stor[s]) > t:
                        uint256(stor[t]) = 0
                        _235 = mem[96]
                        t = t + 1
                        continue 
                    _235 = mem[96]
                    s = s + 1
                    continue 
            else:
                t = sha3(mem[0])
                s = _243 + 32
                while _243 + (32 * _276) + 32 > s:
                    _293 = mem[s]
                    _294 = mem[mem[s]]
                    uint256(stor[t]) = mem[mem[s]]
                    mem[0] = t
                    if not _294:
                        u = sha3(t)
                        while sha3(t) + uint256(stor[t]) > u:
                            uint256(stor[u]) = 0
                            _235 = mem[96]
                            u = u + 1
                            continue 
                    else:
                        u = sha3(t)
                        idx = _293 + 32
                        while _293 + (32 * _294) + 32 > idx:
                            address(stor[u]) = mem[idx + 12 len 20]
                            _235 = mem[96]
                            u = u + 1
                            idx = idx + 32
                            continue 
                        u = sha3(t) + (Mask(251, 0, (32 * _294) + 31) >> 5)
                        while sha3(t) + uint256(stor[t]) > u:
                            uint256(stor[u]) = 0
                            _235 = mem[96]
                            u = u + 1
                            continue 
                    _235 = mem[96]
                    t = t + 1
                    s = s + 32
                    continue 
                s = t
                while sha3(sha3(address(_239), sha3(address(_237), 2)) + 1) + uint256(stor2[address(_237)][address(_239)].field_256) > s:
                    uint256(stor[s]) = 0
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + uint256(stor[s]) > t:
                        uint256(stor[t]) = 0
                        _235 = mem[96]
                        t = t + 1
                        continue 
                    _235 = mem[96]
                    s = s + 1
                    continue 
        else:
            t = sha3(sha3(address(_239), sha3(address(_237), 2)))
            s = _241 + 32
            while _241 + (32 * _249) + 32 > s:
                uint256(stor[t]) = mem[s]
                _235 = mem[96]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(address(_239), sha3(address(_237), 2))) + (Mask(251, 0, (32 * _249) + 31) >> 5)
            while sha3(sha3(address(_239), sha3(address(_237), 2))) + uint256(stor2[address(_237)][address(_239)].field_0) > s:
                uint256(stor[s]) = 0
                _235 = mem[96]
                s = s + 1
                continue 
            _298 = mem[_243]
            uint256(stor2[address(_237)][address(_239)].field_256) = mem[_243]
            mem[0] = sha3(address(_239), sha3(address(_237), 2)) + 1
            if not _298:
                s = sha3(mem[0])
                while sha3(sha3(address(_239), sha3(address(_237), 2)) + 1) + uint256(stor2[address(_237)][address(_239)].field_256) > s:
                    uint256(stor[s]) = 0
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + uint256(stor[s]) > t:
                        uint256(stor[t]) = 0
                        _235 = mem[96]
                        t = t + 1
                        continue 
                    _235 = mem[96]
                    s = s + 1
                    continue 
            else:
                t = sha3(mem[0])
                s = _243 + 32
                while _243 + (32 * _298) + 32 > s:
                    _309 = mem[s]
                    _310 = mem[mem[s]]
                    uint256(stor[t]) = mem[mem[s]]
                    mem[0] = t
                    if not _310:
                        u = sha3(t)
                        while sha3(t) + uint256(stor[t]) > u:
                            uint256(stor[u]) = 0
                            _235 = mem[96]
                            u = u + 1
                            continue 
                    else:
                        u = sha3(t)
                        idx = _309 + 32
                        while _309 + (32 * _310) + 32 > idx:
                            address(stor[u]) = mem[idx + 12 len 20]
                            _235 = mem[96]
                            u = u + 1
                            idx = idx + 32
                            continue 
                        u = sha3(t) + (Mask(251, 0, (32 * _310) + 31) >> 5)
                        while sha3(t) + uint256(stor[t]) > u:
                            uint256(stor[u]) = 0
                            _235 = mem[96]
                            u = u + 1
                            continue 
                    _235 = mem[96]
                    t = t + 1
                    s = s + 32
                    continue 
                s = t
                while sha3(sha3(address(_239), sha3(address(_237), 2)) + 1) + uint256(stor2[address(_237)][address(_239)].field_256) > s:
                    uint256(stor[s]) = 0
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + uint256(stor[s]) > t:
                        uint256(stor[t]) = 0
                        _235 = mem[96]
                        t = t + 1
                        continue 
                    _235 = mem[96]
                    s = s + 1
                    continue 
        _235 = mem[96]
        idx = idx + 1
        continue 
}



}
