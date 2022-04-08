contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transferMultiToken(address arg1, address[] arg2, uint256[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require arg2.length
    idx = 0
    while idx < arg2.length:
        require idx < mem[(32 * arg2.length) + 128]
        require mem[(32 * idx) + (32 * arg2.length) + 160] > 0
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _31 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_29)
        mem[mem[64] + 68] = _31
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_29), _31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < mem[96]
        _35 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _37 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = address(_35)
        mem[mem[64] + 64] = _37
        mem[mem[64] + 96] = arg1
        emit transfer(msg.sender, address(_35), _37, arg1);
        idx = idx + 1
        continue 
}

function transferMulti(address[] arg1, uint256[] arg2) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.value
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg2.length
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require msg.value == s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < mem[96]
        _47 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _49 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = address(_47)
        mem[mem[64] + 64] = _49
        mem[mem[64] + 96] = stor0
        emit transfer(msg.sender, address(_47), _49, stor0);
        idx = idx + 1
        continue 
}



}
