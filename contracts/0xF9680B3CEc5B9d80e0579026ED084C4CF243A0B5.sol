contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_cfa1bd6f;
address tokenContractAddress;
address devWalletAddress;

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return owner
}

function devWallet() payable {
    return devWalletAddress
}

function sub_cfa1bd6f(?) payable {
    return sub_cfa1bd6f
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateDevWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devWalletAddress = arg1
}

function updateTokenContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenContractAddress = arg1
}

function sub_2f772eef(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_cfa1bd6f = 10^18 * arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_53f31b9b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[('cd', 4).length + 128] = 0
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = ceil32(ceil32(('cd', 4).length)) + 129
    idx = 0
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 98] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 130
    idx = 0
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 24 * ext_call.return_data[0] <= sub_cfa1bd6f:
        revert with 0, 'Insufficient Aurora balance to pay the fee'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, owner, sub_cfa1bd6f
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 99 len 10902] = code.data[2647 len 10902]
    if ceil32(('cd', 4).length) <= ('cd', 4).length:
        create contract with 0 wei
                        code: code.data[2647 len 10902], Array(len=ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + 192, data=('cd', 4).length, Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256) << (8 * ceil32(('cd', 4).length)) - 256, ('cd', 68).length, mem[ceil32(ceil32(('cd', 4).length)) + 129 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 130 len 32 * ('cd', 100).length]), address(cd[36]), ceil32(('cd', 4).length) + 160
    else:
        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(('cd', 4).length) + 11161] = ('cd', 68).length
        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(('cd', 4).length) + 11193 len 32 * ('cd', 68).length] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len 32 * ('cd', 68).length]
        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + 11193] = ('cd', 100).length
        create contract with 0 wei
                        code: code.data[2647 len 10902], Array(len=ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + 192, data=('cd', 4).length, Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256) << (8 * ceil32(('cd', 4).length)) - 256, Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ('cd', 4).length + 11193 len (32 * ('cd', 68).length) - ('cd', 4).length + ceil32(('cd', 4).length)], ('cd', 100).length, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 130 len 32 * ('cd', 100).length]), address(cd[36]), ceil32(('cd', 4).length) + 160
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 99] = msg.sender
    emit 0x349da680: msg.sender, address(cd[36]), address(create.new_address), Array(len=('cd', 68).length, data=mem[ceil32(ceil32(('cd', 4).length)) + 129 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 130 len 32 * ('cd', 100).length]), (32 * ('cd', 68).length) + 192
    return address(create.new_address)
}



}
