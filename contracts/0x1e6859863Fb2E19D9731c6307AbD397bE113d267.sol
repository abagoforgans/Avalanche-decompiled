contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
uint256 balanceWAVAX;

function owner() {
    return owner
}

function balanceWAVAX() {
    return balanceWAVAX
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ba37a5c1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_868e2925(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_81c4b370(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function approveToken(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6dd1f840(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint64(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < uint64(arg2):
        mem[96] = 0xc679fa000000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = 0
        require ext_code.size(stor2)
        call stor2.0xc679fa0 with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7f3988a3(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == uint64(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == bool(cd[100])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        s = 0
        while s < uint64(cd[36]):
            if idx >= mem[96]:
                revert with 0, 50
            _22 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 0xc679fa000000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + 101] = _22
            mem[ceil32(32 * ('cd', 4).length) + 133] = bool(cd[100])
            require ext_code.size(address(cd[68]))
            call address(cd[68]).0xc679fa0 with:
                 gas gas_remaining wei
                args _22, bool(cd[100])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        if not calldata.size:
            emit Received(msg.sender, msg.value);
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xba37a5c1(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xba37a5c1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xbe4b1772(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if unknown_0xe5c9ceb3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return balanceWAVAX
                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(cd[4])
                            emit OwnershipTransferred(owner, address(cd[4]));
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xabce145b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xb7f8aa00(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x7f3988a3(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                    if unknown_0x6dd1f840(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == uint64(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < uint64(cd[36]):
                            mem[128] = 0xc679fa000000000000000000000000000000000000000000000000000000000
                            mem[132] = cd[4]
                            mem[164] = 0
                            require ext_code.size(stor2)
                            call stor2.0xc679fa0 with:
                                 gas gas_remaining wei
                                args cd[4], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                    revert with 0, 65
                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                return 0x150b7a0200000000000000000000000000000000000000000000000000000000
            if uint32(call.func_hash) >> 224 != unknown_0x7f3988a3(?????):
                if unknown_0x81c4b370(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor2)
                    call stor2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x83786f8c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x868e2925(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor2)
                        call stor2.0xa22cb465 with:
                             gas gas_remaining wei
                            args address(cd[4]), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                require cd[36] == uint64(cd[36])
                require cd[68] == address(cd[68])
                require cd[100] == bool(cd[100])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    s = 0
                    while s < uint64(cd[36]):
                        if idx >= mem[128]:
                            revert with 0, 50
                        _78 = mem[(32 * idx) + 160]
                        mem[ceil32(32 * ('cd', 4).length) + 129] = 0xc679fa000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + 133] = _78
                        mem[ceil32(32 * ('cd', 4).length) + 165] = bool(cd[100])
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).0xc679fa0 with:
                             gas gas_remaining wei
                            args _78, bool(cd[100])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}



}
