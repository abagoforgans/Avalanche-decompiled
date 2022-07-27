contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function keepers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'transfer eth failed'
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

function sub_30787dd1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor1[tx.origin]:
        revert with 0, 'not valid keeper'
    return 0x30787dd100000000000000000000000000000000000000000000000000000000
}

function withdrawERC20(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function rescueERC721(address arg1, uint256[] arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg2.length:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = arg3
        mem[164] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg3), cd[((32 * idx) + arg2 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6fce8234(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 1
            stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        s = 160
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0xcb732fec: Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
}

function sub_7542b4d3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 1
            stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        s = 160
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x3e6bef6e: Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
}

function rescueERC1155(address arg1, uint256[] arg2, uint256[] arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = arg4
        mem[164] = cd[((32 * idx) + arg2 + 36)]
        mem[196] = cd[((32 * idx) + arg3 + 36)]
        mem[228] = 160
        mem[260] = 0
        require ext_code.size(arg1)
        call arg1.0xf242432a with:
             gas gas_remaining wei
            args address(this.address), address(arg4), cd[((32 * idx) + arg2 + 36)], cd[((32 * idx) + arg3 + 36)], 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x26e2dca2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                require cd[68] == address(cd[68])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[132] = this.address
                    mem[164] = address(cd[68])
                    mem[196] = cd[((32 * idx) + cd[36] + 36)]
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(cd[68]), cd[((32 * idx) + cd[36] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x30787dd1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + ('cd', 68).length + 36 <= calldata.size
                    if not stor1[tx.origin]:
                        revert with 0, 'not valid keeper'
                    return 0x30787dd100000000000000000000000000000000000000000000000000000000
                if unknown_0x3bbd64bc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor1[cd[4]])
                if unknown_0x690d8320(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(cd[4]) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'transfer eth failed'
                else:
                    if unknown_0x6fce8234(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if ('cd', 4).length:
                            idx = 0
                            while idx < ('cd', 4).length:
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 1
                                stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                                if not idx + 1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            idx = 0
                            s = 192
                            t = cd[4] + 36
                            while idx < ('cd', 4).length:
                                require cd[t] == address(cd[t])
                                mem[s] = address(cd[t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xcb732fec: Array(len=('cd', 4).length, data=mem[192 len 32 * ('cd', 4).length])
        else:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x7542b4d3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if ('cd', 4).length:
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 1
                            stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        idx = 0
                        s = 192
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x3e6bef6e: Array(len=('cd', 4).length, data=mem[192 len 32 * ('cd', 4).length])
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0x9456fbcc(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call address(cd[4]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xb7ce33a2(?????):
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
                            require not msg.value
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
                            require cd[100] == address(cd[100])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            idx = 0
                            while idx < ('cd', 36).length:
                                if idx >= ('cd', 68).length:
                                    revert with 0, 50
                                mem[128] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[132] = this.address
                                mem[164] = address(cd[100])
                                mem[196] = cd[((32 * idx) + cd[36] + 36)]
                                mem[228] = cd[((32 * idx) + cd[68] + 36)]
                                mem[260] = 160
                                mem[292] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xf242432a with:
                                     gas gas_remaining wei
                                    args address(this.address), address(cd[100]), cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[68] + 36)], 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not idx + 1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
}



}
