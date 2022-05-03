contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address erc20TokenAddress;
address nftTokenAddress;

function nftTokenAddress() payable {
    return nftTokenAddress
}

function sub_5e4f6cab(?) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function erc20TokenAddress() payable {
    return erc20TokenAddress
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(nftTokenAddress)
    staticcall nftTokenAddress.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NFT DOES NOT EXIST'
    require ext_code.size(erc20TokenAddress)
    call erc20TokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(nftTokenAddress)
    staticcall nftTokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(nftTokenAddress)
    call nftTokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if balanceOf[arg1]:
        require ext_code.size(erc20TokenAddress)
        call erc20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), balanceOf[arg1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balanceOf[arg1] = 0
    return 1
}

function sub_59f31a07(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'ARRAY SIZE MISMATCH'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _76 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _79 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(nftTokenAddress)
        staticcall nftTokenAddress.0x4f558e79 with:
                gas gas_remaining wei
               args _76
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_82] == bool(mem[_82])
        if not mem[_82]:
            revert with 0, 'NFT DOES NOT EXIST'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _79
        require ext_code.size(erc20TokenAddress)
        call erc20TokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _79
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_88] == bool(mem[_88])
        if balanceOf[_76] > !_79:
            revert with 0, 17
        mem[0] = _76
        mem[32] = 0
        balanceOf[_76] += _79
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}



}
