contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address addressOfTokenUsedAsReward;

function addressOfTokenUsedAsReward() {
    return addressOfTokenUsedAsReward
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setTokenReward(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1 = arg1
    addressOfTokenUsedAsReward = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeEth(address[] arg1, uint256[] arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg3.length] = arg3[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 192] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192] = 32
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224] = arg3.length
    s = 0
    while arg1.length < arg3.length:
        mem[(34 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256] = mem[(34 * arg1.length) + (32 * arg2.length) + 192]
        s = arg1.length + 32
        continue 
    if not arg3.length % 32:
        emit Message(string rg1):
                     Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                     mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 224 len ceil32(arg3.length) + 32],
    else:
        mem[floor32(arg3.length) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256] = mem[floor32(arg3.length) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
        emit Message(string rg1):
                     Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                     mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 224 len -(arg3.length % 32) + ceil32(arg3.length) + 64],
}

function distributeTokens(address[] arg1, uint256[] arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg3.length] = arg3[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 192] = 0
    require msg.sender == owner
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192] = 32
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Message(string rg1):
                     Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                     mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 224 len ceil32(arg3.length) + -arg3.length + 32],
                     Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _47 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _51 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 196] = address(_47)
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 228] = _51
            require ext_code.size(stor1)
            call stor1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_47), _51
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[floor32(arg3.length) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256] = mem[floor32(arg3.length) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
        emit Message(string rg1):
                     Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                     mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 224 len ceil32(arg3.length) + -arg3.length + 32],
                     Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                     mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(arg3.length)) + 256 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _49 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _54 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 196] = address(_49)
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 228] = _54
            require ext_code.size(stor1)
            call stor1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_49), _54
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
