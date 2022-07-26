contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function withdrawBNB(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == owner:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_dcd0d440(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not arg2.length:
        mem[(32 * arg2.length) + 132] = msg.sender
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
    else:
        require arg2.length
        if arg2.length * arg3 / arg2.length != arg3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
        mem[(32 * arg2.length) + 132] = msg.sender
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2.length * arg3
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg3
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function airdropTokens(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        if s + cd[((32 * idx) + arg3 + 36)] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[(32 * arg2.length) + 132] = msg.sender
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], cd[((32 * idx) + arg3 + 36)]
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_0990b7af(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        if cd[((32 * idx) + cd[68] + 36)]:
            require cd[((32 * idx) + cd[68] + 36)]
            if cd[((32 * idx) + cd[68] + 36)] * 10^ext_call.return_data[31 len 1] / cd[((32 * idx) + cd[68] + 36)] != 10^ext_call.return_data[31 len 1]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 36).length) + 229 len 31]
            if cd[((32 * idx) + cd[68] + 36)] * 10^ext_call.return_data[31 len 1] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 132] = msg.sender
    mem[(32 * ('cd', 36).length) + 164] = this.address
    mem[(32 * ('cd', 36).length) + 196] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        if not cd[((32 * idx) + cd[68] + 36)]:
            mem[(32 * ('cd', 36).length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * ('cd', 36).length) + 164] = 0
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + 132], 0
        else:
            require cd[((32 * idx) + cd[68] + 36)]
            if cd[((32 * idx) + cd[68] + 36)] * 10^uint8(ext_call.return_data[0]) / cd[((32 * idx) + cd[68] + 36)] != 10^uint8(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 36).length) + 229 len 31]
            mem[(32 * ('cd', 36).length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * ('cd', 36).length) + 164] = cd[((32 * idx) + cd[68] + 36)] * 10^uint8(ext_call.return_data[0])
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + 132], cd[((32 * idx) + cd[68] + 36)] * 10^uint8(ext_call.return_data[0])
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(cd[4]))
        call address(cd[4]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
