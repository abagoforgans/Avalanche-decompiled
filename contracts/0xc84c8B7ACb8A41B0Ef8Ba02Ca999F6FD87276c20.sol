contract main {




// =====================  Runtime code  =====================


address owner;
address stakingV2Address;
mapping of address sub_085456ca;

function sub_085456ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_085456ca[arg1]
}

function stakingV2() payable {
    return stakingV2Address
}

function owner() payable {
    return owner
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

function sub_db42bb8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_085456ca[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect MerkleDistributor token'
    require ext_code.size(sub_085456ca[address(arg1)])
    staticcall sub_085456ca[address(arg1)].startTimestamp() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8ed98af1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_085456ca[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect MerkleDistributor token'
    require ext_code.size(sub_085456ca[address(arg2)])
    staticcall sub_085456ca[address(arg2)].claimed(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_d6b50bdd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Incorrect MerkleDistributor token'
    sub_085456ca[ext_call.return_data[12 len 20]] = address(arg1)
    emit 0x70657e3e: ext_call.return_data[12 len 20], address(arg1)
}

function sub_fabed412(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if sub_085456ca[address(arg2)]:
        if arg3 > 0:
            require arg4.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            require ext_code.size(sub_085456ca[address(arg2)])
            call sub_085456ca[address(arg2)].0x3d13f874 with:
                 gas gas_remaining wei
                args 0, 0, arg3, 96, arg4.length, call.data[arg4 + 36 len 32 * arg4.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stakingV2Address)
    call stakingV2Address.0x6b091695 with:
         gas gas_remaining wei
        args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_934b8143(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if not ('cd', 36).length:
        require ext_code.size(stakingV2Address)
        call stakingV2Address.0x362a3fad with:
             gas gas_remaining wei
            args address(cd[4])
    else:
        if not address(cd[4]):
            revert with 0, 'Wrong account address!'
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0, 'Invalid data!'
        if ('cd', 100).length != ('cd', 36).length:
            revert with 0, 'Invalid data!'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if not sub_085456ca[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'Incorrect token for v1 claim'
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 2
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(sub_085456ca[address(cd[((32 * idx) + cd[36] + 36)])])
            staticcall sub_085456ca[address(cd[((32 * idx) + cd[36] + 36)])].claimed(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_29] == bool(mem[_29])
            if not mem[_29]:
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                require cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] < calldata.size + -cd[(cd[100] + (32 * idx) + 36)] + -cd[100] - 67
                require cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)] <= test266151307()
                require cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 68 <= calldata.size - (32 * cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)])
                mem[mem[64]] = 0x3d13f87400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)]
                require cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[mem[64] + 132 len 32 * cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)]] = call.data[cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 68 len 32 * cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)]]
                mem[mem[64] + (32 * cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)]) + 132] = 0
                require ext_code.size(sub_085456ca[address(cd[((32 * idx) + cd[36] + 36)])])
                call sub_085456ca[address(cd[((32 * idx) + cd[36] + 36)])].0x3d13f874 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[((32 * idx) + cd[68] + 36)], Array(len=cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)], data=call.data[cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 68 len 32 * cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + cd[(cd[(cd[100] + (32 * idx) + 36)] + cd[100] + 36)] + 36)]])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(stakingV2Address)
        call stakingV2Address.0x362a3fad with:
             gas gas_remaining wei
            args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
