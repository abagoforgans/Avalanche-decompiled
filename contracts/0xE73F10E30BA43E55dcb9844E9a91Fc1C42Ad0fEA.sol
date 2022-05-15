contract main {




// =====================  Runtime code  =====================


address owner;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function getToken(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if arg1 == 48879:
            require idx < arg3.length
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            _23 = mem[(32 * idx) + 128]
            require idx < arg3.length
            _27 = mem[(32 * arg2.length) + (32 * idx) + 160]
            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_23)
            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _27
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_23), _27
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
    return idx
}



}
