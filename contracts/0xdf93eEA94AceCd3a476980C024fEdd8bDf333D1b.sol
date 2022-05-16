contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_e0a9254e;
address stor2;
address stor3;
address stor4;
address multiSigWalletAddress;

function multiSigWallet() payable {
    return multiSigWalletAddress
}

function owner() payable {
    return owner
}

function sub_e0a9254e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_e0a9254e.length
    return sub_e0a9254e[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3d330806(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 4).length)) + 97 > test266151307() or ceil32(ceil32(('cd', 4).length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98 > test266151307() or ceil32(ceil32(('cd', 36).length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[ceil32(ceil32(('cd', 4).length)) + 129 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[ceil32(ceil32(('cd', 4).length)) + ('cd', 36).length + 129] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 99
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _33 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_33] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_33 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_33 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _33
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(multiSigWalletAddress)
    staticcall multiSigWalletAddress.0x7df73e27 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _36 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_36] == bool(mem[_36])
    if not mem[_36]:
        revert with 0, 'singer not valid!'
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = 39
    mem[mem[64] + 100] = 'createAsset(string,string,bytes['
    mem[mem[64] + 132] = '],uint)'
    mem[mem[64] + 36] = cd[100]
    require ext_code.size(multiSigWalletAddress)
    staticcall multiSigWalletAddress.0x328a39df with:
            gas gas_remaining wei
           args Array(len=39, data='createAsset(string,string,bytes[', '],uint)'), cd[100]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _42 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _43 = mem[_42]
    require mem[_42] == mem[_42]
    _44 = mem[64]
    mem[mem[64]] = 0xa44095f700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    _45 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
    mem[mem[64] + 68] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
    idx = 0
    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
    t = mem[64] + (32 * _45) + 100
    u = mem[64] + 100
    while idx < _45:
        mem[u] = t + -_44 - 100
        _237 = mem[s]
        _238 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _238:
            mem[t + v + 32] = mem[_237 + v + 32]
            v = v + 32
            continue 
        if ceil32(_238) > _238:
            mem[t + _238 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_238) + 32
        u = u + 32
        continue 
    mem[_44 + 36] = _43
    require ext_code.size(multiSigWalletAddress)
    staticcall multiSigWalletAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len t + -mem[64] - 4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_240] == bool(mem[_240])
    if not mem[_240]:
        revert with 0, 'invalid signature'
    mem[mem[64] len 14796] = code.data[5679 len 14796]
    mem[mem[64] + 14796] = 160
    mem[mem[64] + 14956] = mem[96]
    mem[mem[64] + 14988 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        mem[mem[64] + 14828] = ceil32(mem[96]) + 192
        _430 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
        mem[mem[64] + ceil32(mem[96]) + 14988] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
        mem[mem[64] + ceil32(mem[96]) + 15020 len ceil32(_430)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_430)]
        if ceil32(_430) <= _430:
            mem[mem[64] + 14860] = stor4
            mem[mem[64] + 14892] = stor2
            mem[mem[64] + 14924] = stor3
            create contract with 0 wei
                            code: code.data[5679 len 14796], Array(len=stor3, data=mem[96], mem[mem[64] + 14988 len ceil32(mem[96]) + ceil32(_430) + 32]), ceil32(mem[96]) + 192, stor4, stor2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            sub_e0a9254e.length++
            mem[0] = 1
            sub_e0a9254e[sub_e0a9254e.length] = address(create.new_address)
            _620 = mem[64]
            mem[mem[64] + 36] = msg.sender
            _624 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_624 + 32 len 4] = unknown_0xf2fde38b(?????)
            _636 = mem[_624]
            mem[_620 + 68 len ceil32(mem[_624])] = mem[_624 + 32 len ceil32(mem[_624])]
            if ceil32(_636) > _636:
                mem[_620 + _636 + 68] = 0
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _620 + _636 + -mem[64] + 64]
        else:
            mem[mem[64] + ceil32(mem[96]) + _430 + 15020] = 0
            mem[mem[64] + 14860] = stor4
            mem[mem[64] + 14892] = stor2
            mem[mem[64] + 14924] = stor3
            create contract with 0 wei
                            code: code.data[5679 len 14796], Array(len=stor3, data=mem[96], mem[mem[64] + 14988 len ceil32(mem[96]) + ceil32(_430) + 32]), ceil32(mem[96]) + 192, stor4, stor2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            sub_e0a9254e.length++
            mem[0] = 1
            sub_e0a9254e[sub_e0a9254e.length] = address(create.new_address)
            _622 = mem[64]
            mem[mem[64] + 36] = msg.sender
            _630 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_630 + 32 len 4] = unknown_0xf2fde38b(?????)
            _638 = mem[_630]
            mem[_622 + 68 len ceil32(mem[_630])] = mem[_630 + 32 len ceil32(mem[_630])]
            if ceil32(_638) > _638:
                mem[_622 + _638 + 68] = 0
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _622 + _638 + -mem[64] + 64]
    else:
        mem[mem[64] + mem[96] + 14988] = 0
        mem[mem[64] + 14828] = ceil32(mem[96]) + 192
        _431 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
        mem[mem[64] + ceil32(mem[96]) + 14988] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
        mem[mem[64] + ceil32(mem[96]) + 15020 len ceil32(_431)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_431)]
        if ceil32(_431) <= _431:
            mem[mem[64] + 14860] = stor4
            mem[mem[64] + 14892] = stor2
            mem[mem[64] + 14924] = stor3
            create contract with 0 wei
                            code: code.data[5679 len 14796], Array(len=stor3, data=mem[96], mem[mem[64] + 14988 len ceil32(mem[96]) + ceil32(_431) + 32]), ceil32(mem[96]) + 192, stor4, stor2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            sub_e0a9254e.length++
            mem[0] = 1
            sub_e0a9254e[sub_e0a9254e.length] = address(create.new_address)
            _621 = mem[64]
            mem[mem[64] + 36] = msg.sender
            _627 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_627 + 32 len 4] = unknown_0xf2fde38b(?????)
            _637 = mem[_627]
            mem[_621 + 68 len ceil32(mem[_627])] = mem[_627 + 32 len ceil32(mem[_627])]
            if ceil32(_637) > _637:
                mem[_621 + _637 + 68] = 0
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _621 + _637 + -mem[64] + 64]
        else:
            mem[mem[64] + ceil32(mem[96]) + _431 + 15020] = 0
            mem[mem[64] + 14860] = stor4
            mem[mem[64] + 14892] = stor2
            mem[mem[64] + 14924] = stor3
            create contract with 0 wei
                            code: code.data[5679 len 14796], Array(len=stor3, data=mem[96], mem[mem[64] + 14988 len ceil32(mem[96]) + ceil32(_431) + 32]), ceil32(mem[96]) + 192, stor4, stor2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            sub_e0a9254e.length++
            mem[0] = 1
            sub_e0a9254e[sub_e0a9254e.length] = address(create.new_address)
            _623 = mem[64]
            mem[mem[64] + 36] = msg.sender
            _633 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_633 + 32 len 4] = unknown_0xf2fde38b(?????)
            _639 = mem[_633]
            mem[_623 + 68 len ceil32(mem[_633])] = mem[_633 + 32 len ceil32(mem[_633])]
            if ceil32(_639) > _639:
                mem[_623 + _639 + 68] = 0
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _623 + _639 + -mem[64] + 64]
    if not ext_call.success:
        revert with 0, 'Transaction execution reverted.'
    emit 0x82984b91: address(create.new_address)
    emit ChangeOwnership(msg.sender);
    return address(create.new_address)
}



}
