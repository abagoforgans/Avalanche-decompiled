contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call arg3 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'transfer eth failed'
        emit Call(arg2, msg.sender, arg3);
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function multiERC20TransferTightlyPacked(address arg1, bytes32[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = Mask(64, 96, cd[((32 * idx) + arg2 + 36)]) >> 96
        mem[mem[64] + 68] = Mask(96, 0, cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, Mask(64, 96, cd[((32 * idx) + arg2 + 36)]) << 96, Mask(96, 0, cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        idx = idx + 1
        continue 
}

function multiCallTightlyPacked(bytes32[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        call Mask(64, 96, cd[((32 * idx) + arg1 + 36)]) >> 96 with:
           value Mask(96, 0, cd[((32 * idx) + arg1 + 36)]) wei
             gas gas_remaining wei
        if return_data.size:
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_26] = return_data.size
            mem[_26 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'transfer eth failed'
        mem[mem[64]] = Mask(96, 0, cd[((32 * idx) + arg1 + 36)])
        emit Call(Mask(96, 0, cd[((32 * idx) + arg1 + 36)]), msg.sender, Mask(64, 96, cd[((32 * idx) + arg1 + 36)]) >> 96);
        if Mask(96, 0, cd[((32 * idx) + arg1 + 36)]) + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = Mask(96, 0, cd[((32 * idx) + arg1 + 36)]) + s
        continue 
    if s != msg.value:
        revert with 0, 'mismatch send amount'
    return 1
}

function multiERC20Transfer(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg3.length
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        idx = idx + 1
        continue 
}

function multiCall(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas gas_remaining wei
        if return_data.size:
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_26] = return_data.size
            mem[_26 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'transfer eth failed'
        mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
        emit Call(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((32 * idx) + arg2 + 36)] + s
        continue 
    if s != msg.value:
        revert with 0, 'mismatch send amount'
    return 1
}

function sub_ee15882b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        if address(cd[((96 * idx) + cd[4] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
            require idx < ('cd', 4).length
            call address(cd[((96 * idx) + cd[4] + 68)]) with:
               value cd[((96 * idx) + cd[4] + 100)] wei
                 gas gas_remaining wei
            if return_data.size:
                _30 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_30] = return_data.size
                mem[_30 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'transfer eth failed'
            mem[mem[64]] = cd[((96 * idx) + cd[4] + 100)]
            emit Call(cd[((96 * idx) + cd[4] + 100)], msg.sender, address(cd[((96 * idx) + cd[4] + 68)]));
            require idx < ('cd', 4).length
            if cd[((96 * idx) + cd[4] + 100)] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = cd[((96 * idx) + cd[4] + 100)] + s
            continue 
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        require idx < ('cd', 4).length
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[4] + 68)])
        mem[mem[64] + 68] = cd[((96 * idx) + cd[4] + 100)]
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
        call address(cd[((96 * idx) + cd[4] + 36)]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((96 * idx) + cd[4] + 68)]), cd[((96 * idx) + cd[4] + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_41] == bool(mem[_41])
        idx = idx + 1
        s = s
        continue 
    if s != msg.value:
        revert with 0, 'mismatch send amount'
    return 1
}



}
