contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_adf1bf5a;
array of address addressList;

function owner() payable {
    return owner
}

function sub_adf1bf5a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_adf1bf5a[arg1]
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < addressList.length
    return addressList[arg1]
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

function withdrawTokens() payable {
    if 0x656f762083dbcdc0d0386e46d79d5297687e04a6 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'onlyMultisigOrOwner'
    require ext_code.size(0xad4715e16abe7fdb93750788957c061fedc4850c)
    staticcall 0xad4715e16abe7fdb93750788957c061fedc4850c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xad4715e16abe7fdb93750788957c061fedc4850c)
    call 0xad4715e16abe7fdb93750788957c061fedc4850c.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cd1caebf(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if 0x656f762083dbcdc0d0386e46d79d5297687e04a6 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'onlyMultisigOrOwner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not sub_adf1bf5a[address(cd[((32 * idx) + cd[4] + 36)])]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            addressList.length++
            addressList[addressList.length] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[36] + 36)] and 10^17 > -1 / cd[((32 * idx) + cd[36] + 36)]:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        if sub_adf1bf5a[address(cd[((32 * idx) + cd[4] + 36)])] > (-1 * 10^17 * cd[((32 * idx) + cd[36] + 36)]) - 1:
            revert with 'NH{q', 17
        sub_adf1bf5a[address(cd[((32 * idx) + cd[4] + 36)])] += 10^17 * cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sendAirdrop() payable {
    mem[64] = 96
    if msg.sender == 0x656f762083dbcdc0d0386e46d79d5297687e04a6:
        idx = 0
        while idx < addressList.length:
            mem[0] = addressList[idx]
            mem[32] = 1
            mem[mem[64] + 4] = addressList[idx]
            mem[mem[64] + 36] = sub_adf1bf5a[stor2[idx]]
            require ext_code.size(0xad4715e16abe7fdb93750788957c061fedc4850c)
            call 0xad4715e16abe7fdb93750788957c061fedc4850c.0xa9059cbb with:
                 gas gas_remaining wei
                args addressList[idx], sub_adf1bf5a[stor2[idx]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'onlyMultisigOrOwner'
        idx = 0
        while idx < addressList.length:
            mem[0] = addressList[idx]
            mem[32] = 1
            mem[mem[64] + 4] = addressList[idx]
            mem[mem[64] + 36] = sub_adf1bf5a[stor2[idx]]
            require ext_code.size(0xad4715e16abe7fdb93750788957c061fedc4850c)
            call 0xad4715e16abe7fdb93750788957c061fedc4850c.0xa9059cbb with:
                 gas gas_remaining wei
                args addressList[idx], sub_adf1bf5a[stor2[idx]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == bool(mem[_28])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_31cddb41(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == 0x656f762083dbcdc0d0386e46d79d5297687e04a6:
        idx = arg1
        while idx < arg2:
            if idx >= addressList.length:
                revert with 'NH{q', 50
            mem[0] = addressList[idx]
            mem[32] = 1
            mem[mem[64] + 4] = addressList[idx]
            mem[mem[64] + 36] = sub_adf1bf5a[stor2[idx]]
            require ext_code.size(0xad4715e16abe7fdb93750788957c061fedc4850c)
            call 0xad4715e16abe7fdb93750788957c061fedc4850c.0xa9059cbb with:
                 gas gas_remaining wei
                args addressList[idx], sub_adf1bf5a[stor2[idx]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'onlyMultisigOrOwner'
        idx = arg1
        while idx < arg2:
            if idx >= addressList.length:
                revert with 'NH{q', 50
            mem[0] = addressList[idx]
            mem[32] = 1
            mem[mem[64] + 4] = addressList[idx]
            mem[mem[64] + 36] = sub_adf1bf5a[stor2[idx]]
            require ext_code.size(0xad4715e16abe7fdb93750788957c061fedc4850c)
            call 0xad4715e16abe7fdb93750788957c061fedc4850c.0xa9059cbb with:
                 gas gas_remaining wei
                args addressList[idx], sub_adf1bf5a[stor2[idx]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == bool(mem[_28])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
