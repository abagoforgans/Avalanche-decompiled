contract main {




// =====================  Runtime code  =====================


address owner;

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function sub_7fb7e3f8(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg2.length > 0
    require arg3 > 0
    mem[(32 * arg2.length) + 132] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 * arg2.length <= ext_call.return_data[0]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _42 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 68] = arg3
        _43 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_43 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_43 + 36 len 28]
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        _48 = mem[_43]
        t = _43 + 32
        u = _42 + 100
        s = mem[_43]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_42 + floor32(mem[_43]) + 100] = mem[_43 + -(mem[_43] % 32) + floor32(mem[_43]) + 64 len mem[_43] % 32] or Mask(8 * -(mem[_43] % 32) + 32, -(8 * -(mem[_43] % 32) + 32) + 256, mem[_42 + floor32(mem[_43]) + 100])
        call arg1.mem[_42 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_42 + 104 len _48 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_42 + 210 len 22]
        else:
            mem[64] = _42 + ceil32(return_data.size) + 101
            mem[_42 + 100] = return_data.size
            mem[_42 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_42 + 132]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_42 + ceil32(return_data.size) + 211 len 22]
        idx = idx + 1
        continue 
}

function sub_513e8d29(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length
    require arg3 > 0
    mem[(32 * arg2.length) + 132] = msg.sender
    mem[(32 * arg2.length) + 164] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 * arg2.length <= ext_call.return_data[0]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _41 = mem[(32 * idx) + 128]
        _42 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_41)
        mem[mem[64] + 100] = arg3
        _43 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_43 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_43 + 36 len 28]
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        _48 = mem[_43]
        t = _43 + 32
        u = _42 + 132
        s = mem[_43]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_42 + floor32(mem[_43]) + 132] = mem[_43 + -(mem[_43] % 32) + floor32(mem[_43]) + 64 len mem[_43] % 32] or Mask(8 * -(mem[_43] % 32) + 32, -(8 * -(mem[_43] % 32) + 32) + 256, mem[_42 + floor32(mem[_43]) + 132])
        call arg1.mem[_42 + 132 len 4] with:
             gas gas_remaining wei
            args mem[_42 + 136 len _48 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_42 + 242 len 22]
        else:
            mem[64] = _42 + ceil32(return_data.size) + 133
            mem[_42 + 132] = return_data.size
            mem[_42 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_42 + 164]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_42 + ceil32(return_data.size) + 243 len 22]
        idx = idx + 1
        continue 
}

function sub_4d1c6ee2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg2.length > 0
    mem[(32 * arg2.length) + 132] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < arg2.length:
        require 10^18 * arg3 > 0
        if (10^18 * arg3) + s < s:
            revert with 0, 'SafeMath: addition overflow'
        require (10^18 * arg3) + s <= ext_call.return_data[0]
        require idx < mem[96]
        _44 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 68] = 10^18 * arg3
        _45 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_45 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_45 + 36 len 28]
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        _50 = mem[_45]
        u = _45 + 32
        v = _44 + 100
        t = mem[_45]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 100] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 100])
        call arg1.mem[_44 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_44 + 104 len _50 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_44 + 210 len 22]
        else:
            mem[64] = _44 + ceil32(return_data.size) + 101
            mem[_44 + 100] = return_data.size
            mem[_44 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_44 + 132]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_44 + ceil32(return_data.size) + 211 len 22]
        idx = idx + 1
        s = (10^18 * arg3) + s
        continue 
}

function sub_f0558aa2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length > 0
    require arg2.length == arg3.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < mem[(32 * arg2.length) + 128]
        _47 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require mem[(32 * idx) + (32 * arg2.length) + 160] > 0
        if mem[(32 * idx) + (32 * arg2.length) + 160] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        require mem[(32 * idx) + (32 * arg2.length) + 160] + s <= ext_call.return_data[0]
        require idx < mem[96]
        _51 = mem[(32 * idx) + 128]
        _52 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_51)
        mem[mem[64] + 100] = _47
        _53 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_53 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_53 + 36 len 28]
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        _58 = mem[_53]
        u = _53 + 32
        v = _52 + 132
        t = mem[_53]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_52 + floor32(mem[_53]) + 132] = mem[_53 + -(mem[_53] % 32) + floor32(mem[_53]) + 64 len mem[_53] % 32] or Mask(8 * -(mem[_53] % 32) + 32, -(8 * -(mem[_53] % 32) + 32) + 256, mem[_52 + floor32(mem[_53]) + 132])
        call arg1.mem[_52 + 132 len 4] with:
             gas gas_remaining wei
            args mem[_52 + 136 len _58 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_52 + 242 len 22]
        else:
            mem[64] = _52 + ceil32(return_data.size) + 133
            mem[_52 + 132] = return_data.size
            mem[_52 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_52 + 164]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_52 + ceil32(return_data.size) + 243 len 22]
        idx = idx + 1
        s = _47 + s
        continue 
}



}
