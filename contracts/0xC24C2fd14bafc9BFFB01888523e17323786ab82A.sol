contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_157620ab(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _50 = mem[64]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = ext_call.return_data[0]
        _51 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_51 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_51 + 36 len 28]
        mem[64] = _50 + 164
        mem[_50 + 100] = 32
        mem[_50 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
            revert with 0, 'Address: call to non-contract'
        _55 = mem[_51]
        t = _51 + 32
        u = mem[64]
        s = mem[_51]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_51])] = mem[_51 + floor32(mem[_51]) + -(mem[_51] % 32) + 64 len mem[_51] % 32] or Mask(8 * -(mem[_51] % 32) + 32, -(8 * -(mem[_51] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_51])])
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _55 + _50 + -mem[64] + 160]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                s = address(cd[((32 * idx) + cd[4] + 36)])
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_50 + 100]
            _100 = mem[_50 + 100]
            idx = 0
            while idx < _100:
                mem[idx + _98 + 68] = mem[idx + _50 + 132]
                idx = idx + 32
                continue 
            if not _100 % 32:
                revert with memory
                  from mem[64]
                   len _100 + _98 + -mem[64] + 68
            mem[floor32(_100) + _98 + 68] = mem[floor32(_100) + _98 + -(_100 % 32) + 100 len _100 % 32]
            revert with memory
              from mem[64]
               len floor32(_100) + _98 + -mem[64] + 100
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_95] = return_data.size
        mem[_95 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_95 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            idx = idx + 1
            s = address(cd[((32 * idx) + cd[4] + 36)])
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_50 + 100]
        _104 = mem[_50 + 100]
        idx = 0
        while idx < _104:
            mem[idx + _102 + 68] = mem[idx + _50 + 132]
            idx = idx + 32
            continue 
        if not _104 % 32:
            revert with memory
              from mem[64]
               len _104 + _102 + -mem[64] + 68
        mem[floor32(_104) + _102 + 68] = mem[floor32(_104) + _102 + -(_104 % 32) + 100 len _104 % 32]
        revert with memory
          from mem[64]
           len floor32(_104) + _102 + -mem[64] + 100
}



}
