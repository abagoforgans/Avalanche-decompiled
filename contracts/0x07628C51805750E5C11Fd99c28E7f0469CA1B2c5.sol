contract main {




// =====================  Runtime code  =====================


#
#  - sub_10dcbb9a(?)
#
address stor0;
address owner;
address stor2;
mapping of uint8 stor3;
address stor4;

function owner() {
    return owner
}

function managers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    owner = arg1
}

function addManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    stor3[address(arg1)] = 1
}

function removeManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    stor3[address(arg1)] = 0
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Only managers can call this'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8e209663(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Only managers can call this'
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Only managers can call this'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Only managers can call this'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), arg4
        if not unknown_0x23b872dd(?????), address(arg2) << 64:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Only managers can call this'
    if arg3:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg2) << 64, 0, arg3
        if not approve(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function callFunction(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require calldata.size - 36 >= 64
    require arg2 == arg2
    mem[96] = arg2
    mem[128] = arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 192 >= 160 and ceil32(arg4.length) + 192 <= test266151307()
    mem[160] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[192 len arg4.length] = arg4[all]
    mem[arg4.length + 192] = 0
    mem[ceil32(arg4.length) + 192] = 0
    mem[ceil32(arg4.length) + 224] = 0
    mem[ceil32(arg4.length) + 256] = 96
    require arg4.length >= 32
    require mem[192] <= test266151307()
    require arg4.length - mem[192] >= 96
    require bool(ceil32(arg4.length) + 384 <= test266151307())
    require mem[mem[192] + 192] == mem[mem[192] + 204 len 20]
    mem[ceil32(arg4.length) + 288] = mem[mem[192] + 192]
    mem[ceil32(arg4.length) + 320] = mem[mem[192] + 224]
    _9 = mem[mem[192] + 256]
    require mem[mem[192] + 256] <= test266151307()
    require mem[192] + mem[mem[192] + 256] + 223 < arg4.length + 192
    _10 = mem[mem[192] + mem[mem[192] + 256] + 192]
    require mem[mem[192] + mem[mem[192] + 256] + 192] <= test266151307()
    require (32 * mem[mem[192] + mem[mem[192] + 256] + 192]) + 416 >= 384 and ceil32(arg4.length) + (32 * mem[mem[192] + mem[mem[192] + 256] + 192]) + 416 <= test266151307()
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[192] + mem[mem[192] + 256] + 192]) + 416
    mem[ceil32(arg4.length) + 384] = mem[mem[192] + mem[mem[192] + 256] + 192]
    require arg4.length + 32 >= mem[192] + _9 + (192 * _10) + 64
    s = mem[192] + _9 + 224
    t = ceil32(arg4.length) + 416
    idx = 0
    while idx < _10:
        require arg4.length + -s + 192 >= 192
        _83 = mem[64]
        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
        mem[64] = mem[64] + 192
        require mem[s] < 6
        mem[_83] = mem[s]
        require mem[s + 32] == mem[s + 44 len 20]
        mem[_83 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 76 len 20]
        mem[_83 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 108 len 20]
        mem[_83 + 96] = mem[s + 96]
        mem[_83 + 128] = mem[s + 128]
        mem[_83 + 160] = mem[s + 160]
        mem[t] = _83
        s = s + 192
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(arg4.length) + 352] = ceil32(arg4.length) + 384
    _81 = mem[ceil32(arg4.length) + 288]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_81))
    staticcall address(_81).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _86 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _150 = mem[ceil32(arg4.length) + 384]
    idx = 0
    s = mem[_86]
    while idx < _150:
        require idx < mem[ceil32(arg4.length) + 384]
        require mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] <= 5
        if mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] == 2:
            _158 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 32]
            _159 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 64]
            _160 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 128]
            _161 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_158)
            mem[mem[64] + 68] = address(_159)
            mem[mem[64] + 100] = _160
            mem[mem[64] + 132] = _161
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0xe54cab13 with:
                 gas gas_remaining wei
                args s, address(_158), address(_159), _160, _161
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[ceil32(arg4.length) + 384]
            idx = idx + 1
            s = mem[_177]
            continue 
        require mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] <= 5
        if not mem[mem[(32 * idx) + ceil32(arg4.length) + 416]]:
            _164 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 32]
            _165 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 64]
            _166 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 96]
            _167 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 128]
            _168 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_164)
            mem[mem[64] + 68] = address(_165)
            mem[mem[64] + 100] = address(_166)
            mem[mem[64] + 132] = _167
            mem[mem[64] + 164] = _168
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0xca255923 with:
                 gas gas_remaining wei
                args s, address(_164), address(_165), address(_166), _167, _168
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[ceil32(arg4.length) + 384]
            idx = idx + 1
            s = mem[_181]
            continue 
        require mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] <= 5
        if mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] == 1:
            _172 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 32]
            _173 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 64]
            _174 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 96]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_172)
            mem[mem[64] + 68] = address(_173)
            mem[mem[64] + 100] = address(_174)
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0x987037be with:
                 gas gas_remaining wei
                args s, address(_172), address(_173), address(_174)
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _192 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[ceil32(arg4.length) + 384]
            idx = idx + 1
            s = mem[_192]
            continue 
        require mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] <= 5
        if mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] == 5:
            _179 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 128]
            if mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 128]:
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value _179 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _150 = mem[ceil32(arg4.length) + 384]
                idx = idx + 1
                s = _179
                continue 
            mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[ceil32(arg4.length) + 384]
            idx = idx + 1
            s = 0
            continue 
        require mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] <= 5
        if mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] != 4:
            require mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] <= 5
            if mem[mem[(32 * idx) + ceil32(arg4.length) + 416]] != 3:
                _150 = mem[ceil32(arg4.length) + 384]
                idx = idx + 1
                s = 0
                continue 
            _194 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 32]
            _195 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 64]
            _196 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 96]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_194)
            mem[mem[64] + 68] = address(_195)
            mem[mem[64] + 100] = address(_196)
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0x8c69e858 with:
                 gas gas_remaining wei
                args s, address(_194), address(_195), address(_196)
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[ceil32(arg4.length) + 384]
            idx = idx + 1
            s = mem[_203]
            continue 
        _184 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 32]
        _185 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 64]
        _186 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 96]
        _187 = mem[mem[(32 * idx) + ceil32(arg4.length) + 416] + 128]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_184)
        mem[mem[64] + 68] = address(_185)
        mem[mem[64] + 100] = address(_186)
        mem[mem[64] + 132] = _187
        require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
        delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0x5a9cfe23 with:
             gas gas_remaining wei
            args s, address(_184), address(_185), address(_186), _187
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _150 = mem[ceil32(arg4.length) + 384]
        idx = idx + 1
        s = mem[_202]
        continue 
    if s < mem[ceil32(arg4.length) + 320]:
        revert with 0, 'E1'
}

function sub_0525b597(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    require calldata.size - 68 >= 64
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
        if address(cd[((160 * idx) + cd[4] + 68)]) == stor4:
            require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((160 * idx) + cd[4] + 36)]))
            staticcall address(cd[((160 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_131] == mem[_131 + 18 len 14]
            require mem[_131 + 32] == mem[_131 + 50 len 14]
            require mem[_131 + 64] == mem[_131 + 92 len 4]
            if mem[_131 + 18 len 14] >= cd[((160 * idx) + cd[4] + 132)]:
                if mem[_131 + 50 len 14] >= cd[((160 * idx) + cd[4] + 164)]:
                    idx = idx + 1
                    continue 
        else:
            require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
            require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((160 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((160 * idx) + cd[4] + 68)]))
            staticcall address(cd[((160 * idx) + cd[4] + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((160 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _186 = mem[_176]
            require cd[((160 * idx) + cd[4] + 100)] == address(cd[((160 * idx) + cd[4] + 100)])
            require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((160 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((160 * idx) + cd[4] + 100)]))
            staticcall address(cd[((160 * idx) + cd[4] + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((160 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _186 >= cd[((160 * idx) + cd[4] + 132)]:
                if mem[_199] >= cd[((160 * idx) + cd[4] + 164)]:
                    idx = idx + 1
                    continue 
    _101 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_101] = ('cd', 36).length
    s = _101 + 32
    idx = 0
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + (-192 * idx) - 36 >= 192
        _202 = mem[64]
        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
        mem[64] = mem[64] + 192
        require cd[(cd[36] + (192 * idx) + 36)] < 6
        mem[_202] = cd[(cd[36] + (192 * idx) + 36)]
        require cd[(cd[36] + (192 * idx) + 68)] == address(cd[(cd[36] + (192 * idx) + 68)])
        mem[_202 + 32] = cd[(cd[36] + (192 * idx) + 68)]
        require cd[(cd[36] + (192 * idx) + 100)] == address(cd[(cd[36] + (192 * idx) + 100)])
        mem[_202 + 64] = cd[(cd[36] + (192 * idx) + 100)]
        require cd[(cd[36] + (192 * idx) + 132)] == address(cd[(cd[36] + (192 * idx) + 132)])
        mem[_202 + 96] = cd[(cd[36] + (192 * idx) + 132)]
        mem[_202 + 128] = cd[(cd[36] + (192 * idx) + 164)]
        mem[_202 + 160] = cd[(cd[36] + (192 * idx) + 196)]
        mem[s] = _202
        s = s + 32
        idx = idx + 1
        continue 
    _286 = mem[_101]
    idx = 0
    s = 0
    while idx < _286:
        require idx < mem[_101]
        require mem[mem[(32 * idx) + _101 + 32]] <= 5
        if mem[mem[(32 * idx) + _101 + 32]] == 2:
            _291 = mem[mem[(32 * idx) + _101 + 32] + 32]
            _292 = mem[mem[(32 * idx) + _101 + 32] + 64]
            _293 = mem[mem[(32 * idx) + _101 + 32] + 128]
            _294 = mem[mem[(32 * idx) + _101 + 32] + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_291)
            mem[mem[64] + 68] = address(_292)
            mem[mem[64] + 100] = _293
            mem[mem[64] + 132] = _294
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0xe54cab13 with:
                 gas gas_remaining wei
                args s, address(_291), address(_292), _293, _294
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _286 = mem[_101]
            idx = idx + 1
            s = mem[_311]
            continue 
        require mem[mem[(32 * idx) + _101 + 32]] <= 5
        if not mem[mem[(32 * idx) + _101 + 32]]:
            _298 = mem[mem[(32 * idx) + _101 + 32] + 32]
            _299 = mem[mem[(32 * idx) + _101 + 32] + 64]
            _300 = mem[mem[(32 * idx) + _101 + 32] + 96]
            _301 = mem[mem[(32 * idx) + _101 + 32] + 128]
            _302 = mem[mem[(32 * idx) + _101 + 32] + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_298)
            mem[mem[64] + 68] = address(_299)
            mem[mem[64] + 100] = address(_300)
            mem[mem[64] + 132] = _301
            mem[mem[64] + 164] = _302
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0xca255923 with:
                 gas gas_remaining wei
                args s, address(_298), address(_299), address(_300), _301, _302
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _286 = mem[_101]
            idx = idx + 1
            s = mem[_315]
            continue 
        require mem[mem[(32 * idx) + _101 + 32]] <= 5
        if mem[mem[(32 * idx) + _101 + 32]] == 1:
            _306 = mem[mem[(32 * idx) + _101 + 32] + 32]
            _307 = mem[mem[(32 * idx) + _101 + 32] + 64]
            _308 = mem[mem[(32 * idx) + _101 + 32] + 96]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_306)
            mem[mem[64] + 68] = address(_307)
            mem[mem[64] + 100] = address(_308)
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0x987037be with:
                 gas gas_remaining wei
                args s, address(_306), address(_307), address(_308)
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _286 = mem[_101]
            idx = idx + 1
            s = mem[_326]
            continue 
        require mem[mem[(32 * idx) + _101 + 32]] <= 5
        if mem[mem[(32 * idx) + _101 + 32]] == 5:
            _313 = mem[mem[(32 * idx) + _101 + 32] + 128]
            if mem[mem[(32 * idx) + _101 + 32] + 128]:
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value _313 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[_101]
                idx = idx + 1
                s = _313
                continue 
            mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[_101]
            idx = idx + 1
            s = 0
            continue 
        require mem[mem[(32 * idx) + _101 + 32]] <= 5
        if mem[mem[(32 * idx) + _101 + 32]] != 4:
            require mem[mem[(32 * idx) + _101 + 32]] <= 5
            if mem[mem[(32 * idx) + _101 + 32]] != 3:
                _286 = mem[_101]
                idx = idx + 1
                s = 0
                continue 
            _329 = mem[mem[(32 * idx) + _101 + 32] + 32]
            _330 = mem[mem[(32 * idx) + _101 + 32] + 64]
            _331 = mem[mem[(32 * idx) + _101 + 32] + 96]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_329)
            mem[mem[64] + 68] = address(_330)
            mem[mem[64] + 100] = address(_331)
            require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
            delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0x8c69e858 with:
                 gas gas_remaining wei
                args s, address(_329), address(_330), address(_331)
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _286 = mem[_101]
            idx = idx + 1
            s = mem[_356]
            continue 
        _318 = mem[mem[(32 * idx) + _101 + 32] + 32]
        _319 = mem[mem[(32 * idx) + _101 + 32] + 64]
        _320 = mem[mem[(32 * idx) + _101 + 32] + 96]
        _321 = mem[mem[(32 * idx) + _101 + 32] + 128]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_318)
        mem[mem[64] + 68] = address(_319)
        mem[mem[64] + 100] = address(_320)
        mem[mem[64] + 132] = _321
        require ext_code.size(0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2)
        delegate 0x7363ddeda3708d7e913f4c2e84f1a6b928c523f2.0x5a9cfe23 with:
             gas gas_remaining wei
            args s, address(_318), address(_319), address(_320), _321
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _286 = mem[_101]
        idx = idx + 1
        s = mem[_344]
        continue 
    if cd[100]:
        require calldata.size - 68 >= 64
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        require cd[68] == address(cd[68])
        if gas_remaining < 27710:
            if cd[100] <= 0:
                if cd[100]:
                    require ext_code.size(stor0)
                    call stor0.freeFromUpTo(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            if cd[100] <= gas_remaining - 27710 / 7020:
                if cd[100]:
                    require ext_code.size(stor0)
                    call stor0.freeFromUpTo(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if gas_remaining - 27710 / 7020:
                    require ext_code.size(stor0)
                    call stor0.freeFromUpTo(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), gas_remaining - 27710 / 7020
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
}



}
