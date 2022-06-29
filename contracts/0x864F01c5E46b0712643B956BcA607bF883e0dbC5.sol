contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function multiCallTightlyPacked(bytes32[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        call Mask(64, 96, cd[((32 * idx) + arg1 + 36)]) >> 96 with:
           value Mask(96, 0, cd[((32 * idx) + arg1 + 36)]) wei
             gas gas_remaining wei
        if return_data.size:
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_26] = return_data.size
            mem[_26 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'transfer eth failed'
        mem[mem[64]] = Mask(96, 0, cd[((32 * idx) + arg1 + 36)])
        emit Call(Mask(96, 0, cd[((32 * idx) + arg1 + 36)]), msg.sender, Mask(64, 96, cd[((32 * idx) + arg1 + 36)]) >> 96);
        if Mask(96, 0, cd[((32 * idx) + arg1 + 36)]) + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = Mask(96, 0, cd[((32 * idx) + arg1 + 36)]) + s
        continue 
    if s != msg.value:
        revert with 0, 'mismatch send amount'
    return 1
}

function multiCall(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas gas_remaining wei
        if return_data.size:
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_26] = return_data.size
            mem[_26 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'transfer eth failed'
        mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
        emit Call(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((32 * idx) + arg2 + 36)] + s
        continue 
    if s != msg.value:
        revert with 0, 'mismatch send amount'
    return 1
}

function withdraw(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call arg3 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'transfer eth failed'
        emit Call(arg2, msg.sender, arg3);
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function multiERC20TransferTightlyPacked(address arg1, bytes32[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        _44 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = Mask(64, 96, cd[((32 * idx) + arg2 + 36)]) >> 96
        mem[mem[64] + 100] = Mask(96, 0, cd[((32 * idx) + arg2 + 36)])
        _45 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_45 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_45 + 36 len 28]
        mem[64] = _44 + 196
        mem[_44 + 132] = 32
        mem[_44 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_44 + 302 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        _51 = mem[_45]
        t = _45 + 32
        u = _44 + 196
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 196] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 196])
        call arg1.mem[_44 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_44 + 200 len _51 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_44 + 306 len 22]
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[_44 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_44 + 200] = 32
            mem[_44 + 232] = 32
            idx = 0
            while idx < 32:
                mem[idx + _44 + 264] = mem[idx + _44 + 164]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _44 + -mem[64] + 296
        mem[64] = _44 + ceil32(return_data.size) + 197
        mem[_44 + 196] = return_data.size
        mem[_44 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_44 + 228]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_44 + ceil32(return_data.size) + 307 len 22]
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_44 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_44 + ceil32(return_data.size) + 201] = 32
        idx = 0
        while idx < 32:
            mem[idx + _44 + ceil32(return_data.size) + 265] = mem[idx + _44 + 164]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_44 + ceil32(return_data.size) + 265]
}

function multiERC20Transfer(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg3.length
        _44 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
        _45 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_45 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_45 + 36 len 28]
        mem[64] = _44 + 196
        mem[_44 + 132] = 32
        mem[_44 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_44 + 302 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        _51 = mem[_45]
        t = _45 + 32
        u = _44 + 196
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 196] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 196])
        call arg1.mem[_44 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_44 + 200 len _51 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_44 + 306 len 22]
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[_44 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_44 + 200] = 32
            mem[_44 + 232] = 32
            idx = 0
            while idx < 32:
                mem[idx + _44 + 264] = mem[idx + _44 + 164]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _44 + -mem[64] + 296
        mem[64] = _44 + ceil32(return_data.size) + 197
        mem[_44 + 196] = return_data.size
        mem[_44 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_44 + 228]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_44 + ceil32(return_data.size) + 307 len 22]
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_44 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_44 + ceil32(return_data.size) + 201] = 32
        idx = 0
        while idx < 32:
            mem[idx + _44 + ceil32(return_data.size) + 265] = mem[idx + _44 + 164]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_44 + ceil32(return_data.size) + 265]
}

function sub_ee15882b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        require idx < ('cd', 4).length
        if address(cd[((96 * idx) + cd[4] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call address(cd[((96 * idx) + cd[4] + 68)]) with:
               value cd[((96 * idx) + cd[4] + 100)] wei
                 gas gas_remaining wei
            if return_data.size:
                _69 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_69] = return_data.size
                mem[_69 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'transfer eth failed'
            mem[mem[64]] = cd[((96 * idx) + cd[4] + 100)]
            emit Call(cd[((96 * idx) + cd[4] + 100)], msg.sender, address(cd[((96 * idx) + cd[4] + 68)]));
            require idx < ('cd', 4).length
            if cd[((96 * idx) + cd[4] + 100)] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = cd[((96 * idx) + cd[4] + 100)] + s
            continue 
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        _74 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 68)])
        mem[mem[64] + 100] = cd[((96 * idx) + cd[4] + 100)]
        _75 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_75 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_75 + 36 len 28]
        mem[64] = _74 + 196
        mem[_74 + 132] = 32
        mem[_74 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_74 + 302 len 26]
        if not ext_code.size(address(cd[((96 * idx) + cd[4] + 36)])):
            revert with 0, 'Address: call to non-contract'
        _89 = mem[_75]
        u = _75 + 32
        v = _74 + 196
        t = mem[_75]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_74 + floor32(mem[_75]) + 196] = mem[_75 + -(mem[_75] % 32) + floor32(mem[_75]) + 64 len mem[_75] % 32] or Mask(8 * -(mem[_75] % 32) + 32, -(8 * -(mem[_75] % 32) + 32) + 256, mem[_74 + floor32(mem[_75]) + 196])
        call address(cd[((96 * idx) + cd[4] + 36)]).mem[_74 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_74 + 200 len _89 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_74 + 306 len 22]
                idx = idx + 1
                s = s
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[_74 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_74 + 200] = 32
            mem[_74 + 232] = 32
            idx = 0
            while idx < 32:
                mem[idx + _74 + 264] = mem[idx + _74 + 164]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _74 + -mem[64] + 296
        mem[64] = _74 + ceil32(return_data.size) + 197
        mem[_74 + 196] = return_data.size
        mem[_74 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_74 + 228]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_74 + ceil32(return_data.size) + 307 len 22]
            idx = idx + 1
            s = s
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_74 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_74 + ceil32(return_data.size) + 201] = 32
        idx = 0
        while idx < 32:
            mem[idx + _74 + ceil32(return_data.size) + 265] = mem[idx + _74 + 164]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_74 + ceil32(return_data.size) + 265]
    if s != msg.value:
        revert with 0, 'mismatch send amount'
    return 1
}



}
