contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function getUserInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 7
    mem[64] = 704
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[var22001] = 544
    s = var22001
    idx = var22002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[544] = 0
        mem[576] = 0
        mem[608] = 0
        mem[640] = 0
        mem[672] = 0
        mem[s + 32] = 544
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 7:
        mem[0] = uint8(idx)
        mem[32] = 0
        require ext_code.size(stor2)
        staticcall stor2.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor0[idx << 248], arg1
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _46 = mem[_45]
        require mem[_45] == mem[_45]
        _48 = mem[_45 + 32]
        require mem[_45 + 32] == mem[_45 + 32]
        _50 = mem[_45 + 64]
        require mem[_45 + 64] == mem[_45 + 64]
        require mem[_45 + 96] == mem[_45 + 96]
        require mem[_45 + 128] == mem[_45 + 128]
        require mem[_45 + 160] == mem[_45 + 160]
        require mem[_45 + 192] == mem[_45 + 192]
        require mem[_45 + 224] == mem[_45 + 251 len 5]
        _66 = mem[_45 + 256]
        require mem[_45 + 256] == bool(mem[_45 + 256])
        _71 = mem[64]
        mem[64] = mem[64] + 160
        mem[0] = uint8(idx)
        mem[32] = 0
        mem[_71] = stor0[idx << 248]
        mem[_71 + 32] = _46
        mem[_71 + 64] = _48
        mem[_71 + 96] = _50
        mem[_71 + 128] = bool(_66)
        require idx < mem[288]
        mem[(32 * idx) + 320] = _71
        idx = idx + 1
        continue 
    require ext_code.size(stor3)
    staticcall stor3.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _42 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 192
    require mem[_42] == mem[_42]
    _47 = mem[_42 + 32]
    require mem[_42 + 32] == mem[_42 + 32]
    _49 = mem[_42 + 64]
    require mem[_42 + 64] == mem[_42 + 64]
    _51 = mem[_42 + 96]
    require mem[_42 + 96] == mem[_42 + 96]
    _53 = mem[_42 + 128]
    require mem[_42 + 128] == mem[_42 + 128]
    _55 = mem[_42 + 160]
    require mem[_42 + 160] == mem[_42 + 160]
    mem[96] = mem[_42]
    mem[128] = _47
    mem[160] = _49
    mem[192] = _51
    mem[224] = _53
    mem[256] = _55
    _57 = mem[64]
    mem[mem[64]] = 224
    _58 = mem[288]
    mem[mem[64] + 224] = mem[288]
    idx = 0
    s = 320
    t = mem[64] + 256
    while idx < _58:
        _78 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_78 + 32]
        mem[t + 64] = mem[_78 + 64]
        mem[t + 96] = mem[_78 + 96]
        mem[t + 128] = bool(mem[_78 + 128])
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    mem[_57 + 32] = mem[96]
    mem[_57 + 64] = mem[128]
    mem[_57 + 96] = mem[160]
    mem[_57 + 128] = mem[192]
    mem[_57 + 160] = mem[224]
    mem[_57 + 192] = mem[256]
    return memory
      from mem[64]
       len _57 + (160 * _58) + -mem[64] + 256
}



}
